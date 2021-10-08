import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myethworld/components/app/app_components.dart';
import 'package:myethworld/components/components.dart';
import 'package:myethworld/app/themes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myethworld/components/toasts.dart';
import 'package:myethworld/file_upload/file_picker/file_picker_cubit.dart';
import 'package:myethworld/file_upload/ipfs_upload/ipfs_upload_bloc.dart';


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

  @override
  Widget build(BuildContext context) {
    return FileUploadPageWrapper(
      builder: (context) {
        return Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  child: const Text('Click to Pick'),
                  onPressed: () => _pickFile(context),
                ),
                BlocBuilder<FilePickerCubit, FilePickerState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      picked: (result) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.memory(result.files.single.bytes!),
                            TextButton(
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
                      files: (files) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: files.length,
                          itemBuilder: (context, index) {
                            final file = files[index];

                            return Row(
                              children: [
                                Text(file.url),
                                const SizedBox(width: 8),
                                Text(file.hash),
                              ],
                            );
                          },
                        );
                      },
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
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
                'File Picker',
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
                      BlocProvider.value(value: IpfsUploadBloc()),
                    ],
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: controller,
                      child: Builder(
                        builder: (context) {
                          return builder(context);
                        }
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
