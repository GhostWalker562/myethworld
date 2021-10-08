import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myethworld/components/app/app_components.dart';
import 'package:myethworld/components/components.dart';
import 'package:myethworld/app/themes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myethworld/components/toasts.dart';
import 'package:myethworld/file_upload/file_picker/file_picker_cubit.dart';
import 'package:myethworld/file_upload/ipfs_upload/ipfs_upload_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class FileUploadPage extends StatefulWidget {
  const FileUploadPage({Key? key}) : super(key: key);

  @override
  State<FileUploadPage> createState() => _FileUploadPageState();
}

class _FileUploadPageState extends State<FileUploadPage> {
  Future<void> _pickFile(BuildContext context) async =>
      context.read<FilePickerCubit>().pickFile();

  Future<void> _uploadFile(BuildContext context, FilePickerResult file) async =>
      context.read<IpfsUploadBloc>().add(IpfsUploadEvent.uploadFile(file));

  Future<void> _deleteHash(BuildContext context, String hash) async =>
      context.read<IpfsUploadBloc>().add(IpfsUploadEvent.deleteHash(hash));

  Future<void> _downloadFile(String url) async {
    if (await canLaunch(url)) await launch(url);
  }

  Future<void> _copyHash(String hash) async =>
      Clipboard.setData(ClipboardData(text: hash));

  @override
  Widget build(BuildContext context) {
    return FileUploadPageWrapper(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            ElevatedButton(
              child: const Text('Pick an Image'),
              onPressed: () => _pickFile(context),
            ),
            const SizedBox(height: 12),
            BlocBuilder<FilePickerCubit, FilePickerState>(
              builder: (context, state) {
                return state.maybeWhen(
                  picking: () {
                    return const CupertinoActivityIndicator();
                  },
                  picked: (result) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.memory(
                          result.files.single.bytes!,
                          height: 300,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          child: const Text('Click to Upload'),
                          onPressed: () => _uploadFile(context, result),
                        ),
                      ],
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
            const SizedBox(height: 30),
            SelectableText('Files',
                style: accentTextTheme.headline5!.copyWith(fontSize: 36)),
            BlocConsumer<IpfsUploadBloc, IpfsUploadState>(
              listener: (context, state) {
                final fToast = FToast();
                fToast.init(context);
                state.whenOrNull(
                  error: (obj) {
                    fToast.showToast(
                      toastDuration: const Duration(seconds: 5),
                      child: UpgradeStyleToast(text: '$obj'),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () {
                    return const CupertinoActivityIndicator();
                  },
                  files: (files) {
                    if (files.isEmpty) {
                      return SelectableText('Upload Some Files!',
                          style: context.textTheme.headline4);
                    }

                    return ResponsiveGridView.builder(
                      padding: const EdgeInsets.all(24),
                      primary: false,
                      shrinkWrap: true,
                      itemCount: files.length,
                      gridDelegate: const ResponsiveGridDelegate(
                        childAspectRatio: 1,
                        minCrossAxisExtent: 400,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                      ),
                      itemBuilder: (context, index) {
                        final file = files[index];

                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: Radii.m,
                            color: context.colorScheme.surface,
                            border: Border.all(
                                color: context.colorScheme.onSurface
                                    .withOpacity(0.05)),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      CachedNetworkImage(imageUrl: file.url)),
                              const SizedBox(height: 16),
                              Wrap(
                                runSpacing: 12,
                                spacing: 12,
                                children: [
                                  TransparentButton(
                                    onTap: () => _copyHash(file.hash),
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: context
                                            .theme.scaffoldBackgroundColor,
                                        borderRadius: Radii.m,
                                        border: Border.all(
                                            color: context.colorScheme.onSurface
                                                .withOpacity(0.05)),
                                      ),
                                      width: 200,
                                      height: 50,
                                      child: Text(
                                        'Copy Hash',
                                        style:
                                            context.textTheme.button!.copyWith(
                                          color: context.colorScheme.onSurface,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TransparentButton(
                                    onTap: () => _downloadFile(file.url),
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: context.colorScheme.primary,
                                        borderRadius: Radii.m,
                                      ),
                                      width: 200,
                                      height: 50,
                                      child: Text(
                                        'Download File',
                                        style:
                                            context.textTheme.button!.copyWith(
                                          color: context.colorScheme.onPrimary,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 200,
                                    child: UnderlinedButton(
                                      onTap: () =>
                                          _deleteHash(context, file.hash),
                                      lineColor: context.colorScheme.error,
                                      child: Text(
                                        'Delete',
                                        style:
                                            context.textTheme.button!.copyWith(
                                          color: context.colorScheme.error,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class FileUploadPageWrapper extends StatelessWidget {
  FileUploadPageWrapper({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext) builder;
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(
            onLogoTap: () => context.router.pushNamed('/'),
            leading: ShaderText(
              gradient: LinearGradient(
                colors: [
                  context.colorScheme.primaryVariant,
                  context.colorScheme.secondary,
                  context.colorScheme.secondaryVariant,
                ],
              ),
              child: Text(
                'IPFS Files',
                style: accentTextTheme.headline4!.copyWith(color: Colors.white),
              ),
            ),
            actions: const [
              UpgradeButton(),
              SizedBox(width: 8),
              ConnectButton(),
            ],
          ),
          Expanded(
            child: WalletGuard(
              builder: (BuildContext context, state) {
                return MoralisGuard(
                  builder: (context, state) => MultiBlocProvider(
                    providers: [
                      BlocProvider.value(value: FilePickerCubit()),
                      BlocProvider.value(
                          value: IpfsUploadBloc()
                            ..add(const IpfsUploadEvent.refreshFiles())),
                    ],
                    child: CustomImprovedScrolling(
                      controller: controller,
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller,
                        children: [
                          Builder(
                            builder: (context) {
                              return builder(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
