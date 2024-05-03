import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quant_bot_front/providers/tab_provider.dart';

class QuantBottomNavigationBar extends ConsumerStatefulWidget {
  const QuantBottomNavigationBar({super.key});

  @override
  ConsumerState<QuantBottomNavigationBar> createState() => _QuantBottomNavigationBar();
}

class _QuantBottomNavigationBar extends ConsumerState<QuantBottomNavigationBar> {
  void _onItemTapped(int index, BuildContext context) {
    final notifier = ref.read(tabProvider.notifier);
    notifier.setTab(index);
    switch (index) {
      case 0:
        context.push('/');
        break;
      case 1:
        context.push('/calculator');
        break;
      case 2:
        context.push('/calculator');
        break;
      default:
        context.push('/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Finance Calculator',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Quant Investment',
        ),
      ],
      currentIndex: ref.read(tabProvider),
      onTap: (index) => _onItemTapped(index, context),
    );
  }
}
