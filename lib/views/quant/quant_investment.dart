import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';
import 'package:quant_bot_front/providers/quant_investment_providers.dart';

class QuantInvestmentPage extends ConsumerStatefulWidget {
  const QuantInvestmentPage({super.key});

  @override
  ConsumerState<QuantInvestmentPage> createState() => _QuantInvestmentPageState();
}

class _QuantInvestmentPageState extends ConsumerState<QuantInvestmentPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: '한국주식',
                icon: Icon(Icons.money),
              ),
              Tab(
                text: '암호화폐',
                icon: Icon(Icons.currency_bitcoin),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFE5E5E5),
                        width: 1,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          child: TextField(
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE5E5E5),
                                ),
                              ),
                              border: OutlineInputBorder(),
                              hintText: '주식명을 입력해주세요',
                              hintStyle: TextStyle(
                                color: Color(0xFFE5E5E5),
                              ),
                            ),
                            onChanged: (str) async {
                              ref.read(stockProvider.notifier).state = str;
                              ref.read(marketProvider.notifier).state = 'korea';
                              ref.invalidate(stockListProvider);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    )),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: ref.watch(stockListProvider).maybeWhen(
                          data: (data) => data.length,
                          orElse: () => 0,
                        ),
                    itemBuilder: (BuildContext context, int index) {
                      return ref.watch(stockListProvider).when(
                            data: (data) {
                              return TextButton(
                                onPressed: () {
                                  ref.read(stockProvider.notifier).state = data[index].stockName;
                                  context.push('/quant/trendfollow');
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 2,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color(0xFFE5E5E5),
                                      width: 1,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    data[index].stockName,
                                  ),
                                ),
                              );
                            },
                            error: (error, stackTrace) => const Text('error, stackTrace'),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                    },
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFE5E5E5),
                        width: 1,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          child: TextField(
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE5E5E5),
                                ),
                              ),
                              border: OutlineInputBorder(),
                              hintText: '코인명을 입력해주세요',
                              hintStyle: TextStyle(
                                color: Color(0xFFE5E5E5),
                              ),
                            ),
                            onChanged: (str) async {
                              ref.read(stockProvider.notifier).state = str;
                              ref.read(marketProvider.notifier).state = 'coin';
                              ref.invalidate(stockListProvider);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    )),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: ref.watch(stockListProvider).maybeWhen(
                          data: (data) => data.length,
                          orElse: () => 0,
                        ),
                    itemBuilder: (BuildContext context, int index) {
                      return ref.watch(stockListProvider).when(
                            data: (data) {
                              return TextButton(
                                onPressed: () {
                                  ref.read(stockProvider.notifier).state = data[index].stockName;
                                  context.push('/quant/trendfollow');
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 2,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color(0xFFE5E5E5),
                                      width: 1,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    data[index].stockName,
                                  ),
                                ),
                              );
                            },
                            error: (error, stackTrace) => const Text('error, stackTrace'),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const QuantBottomNavigationBar(),
      ),
    );
  }
}
