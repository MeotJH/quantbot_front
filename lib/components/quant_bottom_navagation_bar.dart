import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuantBottomNavigationBar extends StatefulWidget {
  const QuantBottomNavigationBar({super.key});

  @override
  State<StatefulWidget> createState() => _QuantBottomNavigationBar();
}

class _QuantBottomNavigationBar extends State<QuantBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index, BuildContext context) {
    //print('index ::: $index, ::::::: ');

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

    setState(() {
      _selectedIndex = index;
    });
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
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) => _onItemTapped(index, context),
    );
  }
}
