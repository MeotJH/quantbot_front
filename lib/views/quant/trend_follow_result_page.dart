import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';
import 'package:quant_bot_front/providers/quant_investment_providers.dart';

class TrendFollowResultPage extends ConsumerStatefulWidget {
  const TrendFollowResultPage({super.key});

  @override
  ConsumerState<TrendFollowResultPage> createState() =>
      _TrendFollowResultPageState();
}

class _TrendFollowResultPageState extends ConsumerState<TrendFollowResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ref.watch(trendFollowProvider).when(
            data: (data) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(ref.read(stockProvider)),
                    Text(data.trendFollowPrice),
                    Text(data.baseDateClosePrice),
                    Text(data.isBuy.toString()),
                  ],
                ),
              );
            },
            error: (error, stackTrace) =>
                Text('error :::: $error, stack trace :::::: $stackTrace'),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
