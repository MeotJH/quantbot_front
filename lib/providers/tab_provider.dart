import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  //state 는 class 내부에 있는 변수
  void setTab(int tab) {
    state = tab;
  }
}

final tabProvider = NotifierProvider<TabNotifier, int>(() {
  return TabNotifier();
});
