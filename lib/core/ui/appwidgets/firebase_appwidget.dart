import 'package:flutter/material.dart';

class FirebaseAppWidget extends StatelessWidget {
  const FirebaseAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: ((context, snapshot) {
        return Scaffold(
          appBar: AppBar(),
        );
      }),
    );
  }
}
