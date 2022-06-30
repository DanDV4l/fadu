import 'package:flutter/material.dart';

class AppInfos {
  String title = 'Fadu App';
  String about = 'Created by Daniel - WW:IT dev';
  Map<String, Widget Function(BuildContext)> routes = {
    '/splash': (context) => const SplashPage(),
    '/login': (context) => const LoginPage(),
    '/signup': (context) => const SignUpPage(),
    '/home': (context) => const HomePage()
  };
}

//Will be removed below
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('');
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: const Text('TESTE TESTE TESTE'));
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('');
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('');
  }
}
