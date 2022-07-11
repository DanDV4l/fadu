import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthController {
  String? name;
  Future<void> signIn() async {
    final _googleUser = await GoogleSignIn().signIn();
  }
}
