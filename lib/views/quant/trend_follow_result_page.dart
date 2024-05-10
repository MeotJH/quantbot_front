import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';
import 'package:quant_bot_front/providers/quant_investment_providers.dart';

class TrendFollowResultPage extends ConsumerStatefulWidget {
  const TrendFollowResultPage({super.key});

  @override
  ConsumerState<TrendFollowResultPage> createState() => _TrendFollowResultPageState();
}

class _TrendFollowResultPageState extends ConsumerState<TrendFollowResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Text(ref.read(stockCodeProvider)),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
