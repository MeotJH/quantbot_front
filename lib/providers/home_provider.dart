import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/models/home_models/home_market_model.dart';
import 'package:quant_bot_front/models/home_models/home_model.dart';
import 'package:quant_bot_front/providers/dio_providers.dart';

final AutoDisposeFutureProvider<List<HomeModel>> homeNewsProvider = FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get('/api/v1/news/6'); //await dio.get('/api/v1/news/6');

  if (response.statusCode != 200) {
    return [];
  }

  final news = response.data['newsList'] as List<dynamic>;
  final homeModels = news.map((e) => HomeModel.fromJson(e)).toList();
  return homeModels;
});

final AutoDisposeFutureProvider<List<HomeMarketModel>> homeMaketProvider = FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final response = await dio.get('/api/v1/korea/market');

  if (response.statusCode != 200) {
    return [];
  }

  final markets = response.data['maps'] as Map;
  final data = markets['data'] as List;
  final img = markets['img'] as List;

  List<HomeMarketModel> homeMarketModels = [];
  for (int i = 0; i < data.length; i++) {
    final model = HomeMarketModel(data: data[i], img: img[i]);
    homeMarketModels.add(model);
  }

  return homeMarketModels;
});
