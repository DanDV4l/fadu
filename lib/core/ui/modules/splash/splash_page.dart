import 'package:fadu/core/data/sources/firebase/controllers/google_auth_controller.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        GoogleAuthController googleAuthController = GoogleAuthController();
        googleAuthController.signIn();
      }),
    );
  }
}
