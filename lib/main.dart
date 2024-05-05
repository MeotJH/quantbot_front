import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quant_bot_front/views/calculator_page.dart';
import 'package:quant_bot_front/views/home_page.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
        return const CalculatorPage();
      },
    ),
  ],
);

Future main() async {
  await dotenv.load();
  if (const bool.fromEnvironment("IS_PRODUCTION")) {
    await dotenv.load(fileName: ".env.prod");
  }

  setPathUrlStrategy();
  runApp(const ProviderScope(child: QuantBot()));
}

class QuantBot extends StatelessWidget {
  const QuantBot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF002E5B)),
        useMaterial3: true,
      ),
    );
  }
}
