import 'package:flutter/material.dart';
import 'package:quant_bot_front/views/home_page.dart';

void main() {
  runApp(const QuantBot());
}

class QuantBot extends StatelessWidget {
  const QuantBot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF002E5B)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
