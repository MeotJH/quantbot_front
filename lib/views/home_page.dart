import 'package:flutter/material.dart';
import 'package:quant_bot_front/components/news_card.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF002E5B),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Abdulsalam',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 43,
                    height: 43,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/icon.png',
                    ),
                  ),
                ],
              ),
              const NewsCard(),
              const NewsCard(),
              const NewsCard(),
              const NewsCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
