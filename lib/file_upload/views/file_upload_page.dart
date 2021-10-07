import 'dart:convert';
import 'dart:js_util';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:myethworld/components/app/app_components.dart';
import 'package:myethworld/components/components.dart';
import 'package:myethworld/app/themes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myethworld/file_upload/bloc/ipfs_upload_bloc.dart';
import 'package:myethworld/file_upload/file_upload/file_upload_cubit.dart';
import 'package:myethworld/interops/moralis.dart';

class FileUploadPage extends StatefulWidget {
  const FileUploadPage({Key? key}) : super(key: key);

  @override
  State<FileUploadPage> createState() => _FileUploadPageState();
}

class _FileUploadPageState extends State<FileUploadPage> {
  Uint8List? bytes;

  Future<void> _pickAndUploadFile() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(withData: true, type: FileType.image);
    if (result != null) {
      final file = result.files.single;
      bytes = file.bytes;
      print('picked');
      print(convertToDart(
          await promiseToFuture(saveFile('file', base64.encode(bytes!)))));
      setState(() {});
    }
  }

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
                  child: const Text('Click to Upload'),
                  onPressed: _pickAndUploadFile,
                ),
                BlocBuilder<IpfsUploadBloc, IpfsUploadState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      files: (files) {
                        return ListView.builder(
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
                'File Upload',
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
                      BlocProvider.value(value: FileUploadCubit()),
                      BlocProvider.value(value: IpfsUploadBloc()),
                    ],
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: controller,
                      child: builder(context),
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
