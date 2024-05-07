import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';

class QuantInvestmentPage extends ConsumerStatefulWidget {
  const QuantInvestmentPage({super.key});

  @override
  ConsumerState<QuantInvestmentPage> createState() => _QuantInvestmentPageState();
}

class _QuantInvestmentPageState extends ConsumerState<QuantInvestmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF002E5B),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Center(
                  child: Column(
                children: [],
              )),
            )
          ],
        ),
      ),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
