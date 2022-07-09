import 'package:fadu/core/ui/modules/home/home_page.dart';
import 'package:fadu/core/ui/modules/login/login_page.dart';
import 'package:fadu/core/ui/modules/signup/signup_page.dart';
import 'package:fadu/core/ui/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppInfoData {
  final String title = 'Fadu App';
  String about = 'Created by Daniel Souza Pinto - WW:ITdev';
  Map<String, Widget Function(BuildContext)> routes = {
    '/splash': (context) => const SplashPage(),
    '/login': (context) => const LoginPage(),
    '/signup': (context) => const SignUpPage(),
    '/home': (context) => const HomePage()
  };
}
