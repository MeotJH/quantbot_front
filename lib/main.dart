import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quant_bot_front/views/home_page.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/calculator',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
  ],
);

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
