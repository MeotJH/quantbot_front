import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';
import 'package:quant_bot_front/models/quant_models/trend_follow_chart_model.dart';
import 'package:quant_bot_front/providers/quant_investment_providers.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TrendFollowResultPage extends ConsumerStatefulWidget {
  const TrendFollowResultPage({super.key});

  @override
  ConsumerState<TrendFollowResultPage> createState() =>
      _TrendFollowResultPageState();
}

//container 위젯 안에 center 위젯이 들어가면 풀로 커진다 왜?

class _TrendFollowResultPageState extends ConsumerState<TrendFollowResultPage> {
  @override
  Widget build(BuildContext context) {
    List<TrendFollowChartModel> trendFollowCharts =
        ref.watch(trendFollowsProvider).maybeWhen(
              data: (data) => data,
              orElse: () => [],
            );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ref.watch(trendFollowProvider).when(
            data: (data) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFE5E5E5),
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(),
                              ),
                              Flexible(
                                flex: 1,
                                child: Text('주식명 : ${ref.read(stockProvider)}'),
                              ),
                              const Flexible(
                                flex: 1,
                                child: SizedBox(),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Text('추세평균가 :${data.trendFollowPrice}'),
                              ),
                              const Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child:
                                    Text('금일 종결가 : ${data.baseDateClosePrice}'),
                              ),
                              const Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Text('매수 : ${data.isBuy.toString()}'),
                              ),
                              const Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: SizedBox(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 400,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFE5E5E5),
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: SfCartesianChart(
                              primaryXAxis: const CategoryAxis(),
                              title: ChartTitle(text: ref.read(stockProvider)),
                              legend: const Legend(isVisible: true),
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: <CartesianSeries>[
                                LineSeries<TrendFollowChartModel, String>(
                                  dataSource: [
                                    for (var trendfollow in trendFollowCharts)
                                      trendfollow
                                  ],
                                  xValueMapper:
                                      (TrendFollowChartModel each, _) =>
                                          each.baseDt,
                                  yValueMapper: (TrendFollowChartModel each,
                                          _) =>
                                      double.tryParse(each.trendFollowPrice),
                                  name: 'TrendFollowPrice',
                                  dataLabelSettings:
                                      const DataLabelSettings(isVisible: true),
                                ),
                                LineSeries<TrendFollowChartModel, String>(
                                  dataSource: [
                                    for (var trendfollow in trendFollowCharts)
                                      trendfollow
                                  ],
                                  xValueMapper:
                                      (TrendFollowChartModel sales, _) =>
                                          sales.baseDt,
                                  yValueMapper:
                                      (TrendFollowChartModel sales, _) =>
                                          double.tryParse(sales.closePrice),
                                  name: 'closePrice',
                                  dataLabelSettings:
                                      const DataLabelSettings(isVisible: true),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            error: (error, stackTrace) {
              throw Exception(
                  'error :::: $error, stack trace :::::: $stackTrace');
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}

class ChartData {
  ChartData(this.month, this.sales);

  final String month;
  final double sales;
}
