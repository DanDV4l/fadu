import 'package:fadu/core/ui/appwidgets/firebase/firebase_initialization.dart';
import 'package:fadu/core/ui/modules/splash/splash_page.dart';
import 'package:flutter/widgets.dart';

class FirebaseAppWidget extends StatelessWidget {
  const FirebaseAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebaseInit(widget: const SplashPage());
  }
}
