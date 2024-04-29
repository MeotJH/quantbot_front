import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';
import 'package:quant_bot_front/providers/dio_providers';
import 'package:quant_bot_front/providers/home_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C'
  ];
  final List<int> colorCodes = <int>[
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100
  ];

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
              ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return ref.watch(homepageProvider).when(
                        data: (data) {
                          return TextButton(
                            onPressed: () async {
                              final Uri toLaunch =
                                  Uri(scheme: 'https', host: 'www.hankyung.com', path: 'article/2024042951015');

                              await launchUrl(toLaunch, mode: LaunchMode.inAppWebView);
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(120, 120, 167, 225),
                                    Color.fromARGB(194, 3, 16, 33),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                data[index].alt,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          );
                        },
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        error: (error, stackTrace) => Center(
                          child: Text(
                            '에러: $error, $stackTrace',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
