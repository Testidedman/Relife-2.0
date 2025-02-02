import 'package:demo/authorization_page.dart';
import 'package:demo/registration_page.dart';
import 'package:demo/starting_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(
    initialLocation: '/starting_page',
    routes: [
      GoRoute(
        path: '/starting_page',
        builder: (context, state) => const StartingPage(),
      ),
      GoRoute(
        path: '/authorization_page',
        builder: (context, state) => const AuthorizationPage(),
      ),
      GoRoute(
        path: '/registration_page',
        builder: (context, state) => const RegistrationPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}