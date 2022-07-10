import 'dart:math';

import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthController {
  final GoogleSignIn _googleSignIn =
      GoogleSignIn(scopes: ['id', 'email', 'displayName', 'photoUrl']);
  Future signIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      return;
    }
  }
}
