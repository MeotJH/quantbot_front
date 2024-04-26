import 'package:flutter/material.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF002E5B),
      ),
      body: const SingleChildScrollView(),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
