import 'dart:html';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/models/quant_models/stock_model.dart';
import 'package:quant_bot_front/models/quant_models/trend_follow_model.dart';
import 'package:quant_bot_front/providers/dio_providers.dart';

final AutoDisposeFutureProvider<List<StockModel>> stockListProvider = FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final stock = ref.watch(stockProvider);

  final result = await dio.get('/api/v1/korea/stocks/$stock');

  if (result.statusCode != HttpStatus.ok) {
    return [];
  }

  final List<dynamic> jsonData = result.data;
  final List<StockModel> stockModels = jsonData.map((e) => StockModel.fromJson(e)).toList();

  return stockModels;
});

final stockProvider = StateProvider((ref) {
  ref.invalidate(stockListProvider);
  return '';
});

final stockCodeProvider = StateProvider((ref) => '');

final AutoDisposeFutureProvider<TrendFollowModel> trendFollowProvider = FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final stock = ref.watch(stockProvider);

  const market = 'korea';
  final result = await dio.get('/api/v2/trend-follow/$market/$stock');

  if (result.statusCode != HttpStatus.ok) {
    return TrendFollowModel();
  }

  return TrendFollowModel.fromJson(result.data);
});
