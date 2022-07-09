import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fadu/core/ui/appwidgets/firebase/firebase_initialization.dart';
import 'package:fadu/core/ui/bloc/app_bloc.dart';
import 'package:flutter/widgets.dart';

class FirebaseAppWidget extends StatelessWidget {
  const FirebaseAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBloc bloc = AppBloc('user1ID');
    bloc.initState();
    return FirebaseInit(
        widget: StreamBuilder<QuerySnapshot>(
      stream: bloc.output,
      builder: (context, snapshot) {
        List t = [];
        for (var element in snapshot.data!.docs) {
          t.add(element.data());
        }

        return Text(t.toString());
      },
    ));
  }
}
