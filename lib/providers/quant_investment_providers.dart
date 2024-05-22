import 'dart:html';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:quant_bot_front/models/quant_models/stock_model.dart';
import 'package:quant_bot_front/models/quant_models/trend_follow_chart_model.dart';
import 'package:quant_bot_front/models/quant_models/trend_follow_model.dart';
import 'package:quant_bot_front/providers/dio_providers.dart';

final AutoDisposeFutureProvider<List<StockModel>> stockListProvider =
    FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final stock = ref.watch(stockProvider);
  final market = ref.read(marketProvider);
  final result = await dio.get('/api/v1/$market/stocks/$stock');

  if (result.statusCode != HttpStatus.ok) {
    return [];
  }

  final List<dynamic> jsonData = result.data;
  final List<StockModel> stockModels =
      jsonData.map((e) => StockModel.fromJson(e)).toList();

  return stockModels;
});

final stockProvider = StateProvider((ref) {
  ref.invalidate(stockListProvider);
  return '';
});

final stockCodeProvider = StateProvider((ref) => '');
final marketProvider = StateProvider((ref) => 'korea');

final AutoDisposeFutureProvider<TrendFollowModel> trendFollowProvider =
    FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final stock = ref.watch(stockProvider);
  final market = ref.read(marketProvider);
  final result = await dio.get('/api/v2/trend-follow/$market/$stock');

  if (result.statusCode != HttpStatus.ok) {
    return TrendFollowModel();
  }
  return TrendFollowModel.fromJson(result.data);
});

final AutoDisposeFutureProvider<List<TrendFollowChartModel>>
    trendFollowsProvider = FutureProvider.autoDispose((ref) async {
  final dio = ref.read(dioProvider);
  final stock = ref.watch(stockProvider);
  final market = ref.read(marketProvider);
  final result = await dio.get('/api/v2/trend-follows/$market/$stock');

  if (result.statusCode != HttpStatus.ok) {
    return [];
  }

  final Map<String, dynamic> jsonData = result.data;
  final length = jsonData['trendFollowPrices']?.length ?? 0;

  return List.generate(length, (i) {
    int reversedIndex = length - 1 - i;
    return TrendFollowChartModel.of(
      trendFollowPrice:
          (jsonData['trendFollowPrices']?[reversedIndex] as double)
              .toStringAsFixed(0),
      isBuy: jsonData['isBuy']?[reversedIndex] ?? false,
      baseDt: market == 'korea'
          ? jsonData['baseDt'][reversedIndex]
          : formatDateFromJson(date: jsonData['baseDt'][reversedIndex]),
      closePrice:
          (jsonData['closePrice']?[reversedIndex] as double).toStringAsFixed(2),
    );
  }).toList();
});

String formatDateFromJson({required String date}) {
  int milliseconds = int.parse(date.replaceFirst('+', ''));
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(milliseconds);
  return DateFormat('yyyy-MM-dd').format(dateTime);
}
