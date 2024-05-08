import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';
import 'package:quant_bot_front/models/quant_models/stock_model.dart';
import 'package:quant_bot_front/providers/dio_providers.dart';
import 'package:quant_bot_front/providers/quant_investment_providers.dart';

class QuantInvestmentPage extends ConsumerStatefulWidget {
  const QuantInvestmentPage({super.key});

  @override
  ConsumerState<QuantInvestmentPage> createState() => _QuantInvestmentPageState();
}

class _QuantInvestmentPageState extends ConsumerState<QuantInvestmentPage> {
  @override
  Widget build(BuildContext context) {
    List<StockModel> rendering = [];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
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
                        hintText: '검색어를 입력해주세요',
                        hintStyle: TextStyle(
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                      onChanged: (str) async {
                        ref.read(stockProvider.notifier).state = str;
                        ref.invalidate(stockListProvider);
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      ref.read(stockListProvider);
                    },
                    child: Container(
                      width: 275,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFE5E5E5),
                          width: 1,
                        ),
                        color: const Color(0xFF002E5B),
                      ),
                      child: const Center(
                        child: Text('Search',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
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
                      data: (data) => Text(data[index].stockName),
                      error: (error, stackTrace) => const Text('error, stackTrace'),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                return const Text('test');
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
