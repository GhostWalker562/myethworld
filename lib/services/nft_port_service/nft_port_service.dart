import 'package:dio_http/dio_http.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'nft.dart';
export 'nft.dart';

@singleton
class NftPortService {
  static final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.nftport.xyz/',
      headers: {'Authorization': const String.fromEnvironment('NFTPORT')},
    ),
  );

  static Future<Box> get nftBox async => Hive.openBox('nft');

  static String deployedCollection =
      '0xd270a6496a31f0a1542b0adac9fd871d56fd9926';

  Future<Nft> details(String tokenId) async {
    final query = {
      'chain': 'polygon',
    };

    final response = (await dio.get(
      '/v0/nfts/$deployedCollection/$tokenId',
      queryParameters: query,
    ))
        .data;
    if (response['response'] != 'OK') throw Exception(response['error']);

    return Nft.fromJson(response['nft']);
  }

  Future<dynamic> easyMint(
      String name, String description, String fileUrl, String address) async {
    final body = {
      'chain': 'polygon',
      'contract_address': deployedCollection,
      'metadata_uri': await uploadMetaData(name, description, fileUrl),
      'mint_to_address': address,
    };

    final response = (await dio.post('/v0/mints/customizable',
            data: body, options: Options(contentType: Headers.jsonContentType)))
        .data;
    if (response['response'] != 'OK') throw Exception(response['error']);

    // Wait for database to update
    await Future.delayed(const Duration(seconds: 8));

    late final nft;
    try {
      nft = await minted(response['transaction_hash']);
    } catch (e) {
      await Future.delayed(const Duration(seconds: 8));
      nft = await minted(response['transaction_hash']);
    }
    final tokenId = nft['token_id'];
    final box = await nftBox;
    await box.add(tokenId);

    return response;
  }

  Future<dynamic> minted(String hash) async {
    final query = {
      'chain': 'polygon',
    };

    final response =
        (await dio.get('/v0/mints/$hash', queryParameters: query)).data;
    if (response['response'] != 'OK') throw Exception(response['error']);

    return response;
  }

  Future<String> uploadMetaData(
      String name, String description, String fileUrl) async {
    final body = {
      'name': name,
      'description': (description.isNotEmpty) ? description : "MyEthWorld",
      'file_url': fileUrl,
    };

    final response = (await dio.post('/v0/metadata',
            data: body, options: Options(contentType: Headers.jsonContentType)))
        .data;
    if (response['response'] != 'OK') throw Exception(response['error']);

    return response['metadata_uri'];
  }

  Future<List<String>> nfts() async {
    final nfts = <String>[];
    final box = await nftBox;
    for (String token in box.values) {
      // try {
      //   nfts.add(await details(token));
      // } catch (e) {
      //   // ignore: avoid_print
      //   print('Error finding $token');
      //   continue;
      // }
      nfts.add(token);
    }
    return nfts;
  }
}
