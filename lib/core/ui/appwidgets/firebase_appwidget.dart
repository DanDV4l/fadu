import 'package:fadu/core/data/repositories/firebase_repository.dart';
import 'package:fadu/core/data/sources/firebase/firebase_options.dart';
import 'package:fadu/core/ui/bloc/app_state.dart';
import 'package:fadu/core/ui/shared/app_info_data.dart';
import 'package:fadu/domain/repositories/messages_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirebaseAppWidget extends StatelessWidget {
  const FirebaseAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MessagesRepository repository = FirebaseRepository();
    return FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, initSnapshot) {
          if (initSnapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: Colors.amber,
            );
          }
          if (initSnapshot.connectionState == ConnectionState.done) {
            return StreamBuilder(
                stream: repository.fetch(userName: 'user1ID'),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const HomePage();
                  }
                  if (snapshot.connectionState == ConnectionState.active) {
                    return BlocProvider(
                        create: (_) => AppState(snapshot),
                        child: const LoginPage());
                  }
                  return const SizedBox();
                });
          }

          return const SizedBox();
        });
  }
}
