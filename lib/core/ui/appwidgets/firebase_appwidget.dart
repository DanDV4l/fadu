import 'package:fadu/core/data/sources/firebase/firebase_options.dart';
import 'package:fadu/core/ui/shared/app_infos.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirebaseAppWidget extends StatelessWidget {
  const FirebaseAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppInfos info = AppInfos();
    return FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, firebaseSnapshot) {
          if (firebaseSnapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: Colors.black,
              child: const SizedBox(
                height: 40,
                width: 40,
                child: CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.black,
                ),
              ),
            );
          }
          if (firebaseSnapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: info.title,
              routes: info.routes,
              initialRoute: '/login',
            );
          }
          return const SizedBox();
        });
  }
}
