import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/providers/dio_providers';

final AutoDisposeFutureProvider<dynamic> homepageProvider =
    FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get(
      'https://api.sampleapis.com/futurama/characters'); //await dio.get('/api/v1/news/6');

  print('this is response $response');
  if (response.statusCode != 200) {
    return [];
  }
  //final todos = response.data['data']['todos'] as List<dynamic>;
  return response;
});
