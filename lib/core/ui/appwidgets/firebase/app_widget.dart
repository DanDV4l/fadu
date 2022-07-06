import 'package:fadu/core/ui/appwidgets/firebase/firebase_initialization.dart';
import 'package:fadu/core/ui/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirebaseAppWidget extends StatelessWidget {
  const FirebaseAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebaseInit(widget: SizedBox());
  }
}
