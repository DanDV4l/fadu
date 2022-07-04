import 'package:fadu/core/data/sources/firebase/firebase_options.dart';
import 'package:fadu/core/ui/shared/app_info_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirebaseAppWidget extends StatelessWidget {
  const FirebaseAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            color: Colors.black,
            child: const SizedBox(
              child: CircularProgressIndicator(
                backgroundColor: Colors.black,
                color: Colors.red,
              ),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return const SplashPage();
        }
        return Container(
          color: Colors.black,
          child: const SizedBox(
            child: CircularProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.red,
            ),
          ),
        );
      }),
    );
  }
}
