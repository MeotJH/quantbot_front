import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/models/home_model.dart';
import 'package:quant_bot_front/providers/dio_providers';

final AutoDisposeFutureProvider<List<HomeModel>> homepageProvider = FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get('/api/v1/news/6'); //await dio.get('/api/v1/news/6');

  if (response.statusCode != 200) {
    return [];
  }

  final news = response.data['newsList'] as List<dynamic>;
  final homeModels = news.map((e) => HomeModel.fromJson(e)).toList();
  return homeModels;
});
