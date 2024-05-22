import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';
import 'package:quant_bot_front/providers/home_provider.dart';
import 'package:quant_bot_front/providers/user_providers.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        ref.watch(userProvider).maybeWhen(
                              data: (user) => user.userId,
                              orElse: () => '',
                            ),
                        style: const TextStyle(
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
              const Text(
                '한국 뉴스',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return ref.watch(homeNewsProvider).when(
                        data: (data) {
                          return TextButton(
                            onPressed: () async {
                              final Uri toLaunch = Uri.parse(data[index].href);
                              await launchUrl(toLaunch,
                                  mode: LaunchMode.inAppWebView);
                            },
                            child: Container(
                              height: 300,
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
                                  child: Column(
                                children: [
                                  SizedBox(
                                    width: 250,
                                    height: 250,
                                    child: Image.network(data[index].src),
                                  ),
                                  Text(
                                    data[index].alt,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
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
                separatorBuilder: (
                  BuildContext context,
                  int index,
                ) =>
                    const Divider(),
              ),
              const Text(
                '오늘의 한국 시황',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    return ref.watch(homeMaketProvider).when(
                          data: (data) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 200,
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
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    data[index].name,
                                    style: TextStyle(
                                      color: data[index].color,
                                    ),
                                  ),
                                  SizedBox(
                                    child: Image.network(
                                      data[index].img,
                                      width: 250,
                                    ),
                                  ),
                                  Text(
                                    data[index].data,
                                    style: TextStyle(
                                      color: data[index].color,
                                    ),
                                  ),
                                ],
                              )),
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
                  separatorBuilder: (
                    BuildContext context,
                    int index,
                  ) =>
                      const Divider(),
                  itemCount: 2)
            ],
          ),
        ),
      ),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
