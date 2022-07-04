import 'package:fadu/core/data/sources/firebase/firebase_options.dart';
import 'package:fadu/core/ui/shared/app_info_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../shared/app_info_data.dart';

class FirebaseAppWidget extends StatelessWidget {
  const FirebaseAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform),
      builder: ((context, initializeSnapshot) {
        if (initializeSnapshot.connectionState == ConnectionState.waiting) {
          return const SplashPage();
        }
        if (initializeSnapshot.connectionState == ConnectionState.done) {
          return StreamBuilder(builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              //OBS: HAVE TO SEND SNAPSHOT TO THE BLOC PROVIDER
            }
            return const HomePage();
          });
        }
        return Container(
          color: Colors.black,
        );
      }),
    );
  }
}
