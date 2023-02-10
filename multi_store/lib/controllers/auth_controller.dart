import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signUpUsers(String email, String fullName, String phoneNumber,
      String password) async {
    String res = 'Some error occurred';

    try {
      if (email.isNotEmpty &&
          fullName.isNotEmpty &&
          phoneNumber.isNotEmpty &&
          password.isNotEmpty) {
        // Create user

        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      } else {
        res = 'Fields should not be empty.';
      }
    } catch (e) {}
    return res;
  }
}
