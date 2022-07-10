import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>['email']);

  Future<void> signIn() async {
    try {
      final response = await GoogleSignIn().signIn();

      print(response.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}
