import 'package:fadu/core/data/sources/firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FirebaseInitialization extends StatelessWidget {
  FirebaseInitialization({Key? key, required Widget this.widget})
      : super(key: key);
  Widget? widget;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, initSnapshot) {
          if (initSnapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: Colors.black,
            );
          }
          if (initSnapshot.connectionState == ConnectionState.done) {
            return widget!;
          }

          return const SizedBox();
        });
  }
}
