import 'dart:convert';
import 'dart:js_util';

import 'package:collection/src/iterable_extensions.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:myethworld/interops/moralis.dart';

import 'package:myethworld/services/ipfs/ipfs_data.dart';
export 'package:myethworld/services/ipfs/ipfs_data.dart';

@injectable
class IpfsService {
  Future<Box> get ipfsBox async => Hive.openBox('ipfs');

  Future<FilePickerResult?> pickFile() async =>
      await FilePicker.platform.pickFiles(withData: true, type: FileType.image);

  Future<void> uploadIpfs(FilePickerResult result) async {
    final file = result.files.single;
    final bytes = file.bytes;
    final object = convertToDart(
        await promiseToFuture(saveFile('file', base64.encode(bytes!))));
    final box = await ipfsBox;
    final ipfsFiles = await getIpfsFiles();
    final List<String> data = List<String>.from(box.get(0, defaultValue: []));
    final ipfs = IpfsData(object['hash'], object['ipfs']);

    // Prevent duplicate hashes
    if (ipfsFiles.firstWhereOrNull((e) => e.hash == ipfs.hash) == null) {
      box.put(
        0,
        data..add(jsonEncode(ipfs.toJson())),
      );
    }
  }

  Future<String> uploadAndRetrieve(String codec) async {
    final object =
        convertToDart(await promiseToFuture(saveFile('file', codec)));
    final ipfs = IpfsData(object['hash'], object['ipfs']);
    return ipfs.url;
  }

  Future<List<IpfsData>> getIpfsFiles() async {
    final box = await ipfsBox;
    final List<String> data = List<String>.from(box.get(0, defaultValue: []));
    return _parseIpfsList(data);
  }

  Future<void> deleteHash(String hash) async {
    final files = await getIpfsFiles();
    final box = await ipfsBox;
    await box.put(
      0,
      files
          .where((e) => e.hash != hash)
          .map((e) => jsonEncode(e.toJson()))
          .toList(),
    );
  }

  List<IpfsData> _parseIpfsList(List<String> list) {
    final data = <IpfsData>[];

    for (String e in list) {
      final json = jsonDecode(e);
      data.add(IpfsData.fromJson(json));
    }

    return data;
  }
}
