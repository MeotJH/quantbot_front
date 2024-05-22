import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:quant_bot_front/components/quant_bottom_navagation_bar.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  //은퇴자금 계산기 variable//
  final TextEditingController retireAnnualCostCtrl = TextEditingController();
  final TextEditingController retireAnnualIncomeCtrl = TextEditingController();
  final TextEditingController inflationRateCtrl = TextEditingController();
  final TextEditingController retireCtrl = TextEditingController();
  String retireResult = "0";
  //은퇴자금 계산기 variable//

  @override
  void initState() {
    super.initState();

    retireAnnualCostCtrl.addListener(() {
      retireAnnualCostCtrl.value = retireAnnualCostCtrl.value.copyWith(
        text: parseKoreaMoney(
          beforeParse: retireAnnualCostCtrl.text,
        ),
      );
    });
  }

  void getRetireFinance() {
    final int money = int.parse(retireAnnualCostCtrl.text.replaceAll(",", ""));
    final double percent = int.parse(retireAnnualIncomeCtrl.text) / 100;
    final double inflation = int.parse(inflationRateCtrl.text) / 100;
    final int year = int.parse(retireCtrl.text);

    if (percent <= inflation) {
      print('연 투자수익이 물가상승률 보다 커야합니다.');
    }
    final result = money * (pow((1.0 + inflation), year)) / (percent - inflation);
    retireResult = result.toStringAsFixed(0);
    setState(() {
      retireResult = " ${parseKoreaMoney(beforeParse: result.toStringAsFixed(0))}원";
    });
  }

  String parseKoreaMoney({required String beforeParse}) {
    if (beforeParse == "") {
      return "";
    }

    final formatCurrency = NumberFormat.simpleCurrency(
      locale: "ko_KR",
      name: "",
      decimalDigits: 0,
    );
    return formatCurrency.format(int.parse(beforeParse));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF002E5B),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(120, 120, 167, 225),
                    Color.fromARGB(194, 3, 16, 33),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ExpansionTile(
                  title: const Text(
                    '은퇴 자금 계산기',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  initiallyExpanded: true,
                  children: [
                    const ListTile(
                      title: Text(
                        '얼마를 가지고 있어야 은퇴할 수 있을까?\n인플레이션을 고려해 계산해드립니다.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '은퇴 후 연 지출액',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            controller: retireAnnualCostCtrl,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              border: const OutlineInputBorder(),
                              hintText: 'ex ) 30,000,000',
                              hintStyle: TextStyle(
                                color: Colors.white70.withOpacity(0.3),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '은퇴 후 기대 연 투자수익',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            controller: retireAnnualIncomeCtrl,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                                hintText: 'ex ) 5~7',
                                hintStyle: TextStyle(
                                  color: Colors.white70.withOpacity(0.3),
                                )),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '물가상승률',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            controller: inflationRateCtrl,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                                hintText: 'ex ) 2~3%',
                                hintStyle: TextStyle(
                                  color: Colors.white70.withOpacity(0.3),
                                )),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '은퇴까지 남은 연수',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            controller: retireCtrl,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              border: const OutlineInputBorder(),
                              hintText: 'ex ) 30년',
                              hintStyle: TextStyle(
                                color: Colors.white70.withOpacity(0.3),
                              ),
                            ),
                            onSubmitted: (String value) {
                              getRetireFinance();
                            },
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Visibility(
                        visible: retireResult != "0",
                        child: Text(
                          retireResult,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), // Set color with opacity
                      spreadRadius: 2, // Set the spread radius
                      blurRadius: 2, // Set the blur radius
                      offset: const Offset(0, 1), // Set the shadow offset
                    ),
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(120, 120, 167, 225),
                      Color.fromARGB(194, 3, 16, 33),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const ExpansionTile(
                  title: Text(
                    '적립식 복리 계산기',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), // Set color with opacity
                      spreadRadius: 2, // Set the spread radius
                      blurRadius: 2, // Set the blur radius
                      offset: const Offset(0, 1), // Set the shadow offset
                    ),
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(120, 120, 167, 225),
                      Color.fromARGB(194, 3, 16, 33),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const ExpansionTile(
                  title: Text(
                    '전세 vs 월세 가성비 계산기',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const QuantBottomNavigationBar(),
    );
  }
}
