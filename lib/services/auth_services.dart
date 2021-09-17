part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future signUp(String email, String password, String name,
      List<String> selectdGenres, String selectedLanguage) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      // Convert firebaseUser to user<object>
      User user = result.user.convertToUser(
          name: name,
          selectedGenres: selectdGenres,
          selectedLanguage: selectedLanguage);

      // untuk save ke firestore
      await UserServices.updateUser(user);

      return SignInSignUpResult(user: user, message: '');
    } catch (e) {
      // return SignInSignUpResult(message: e.toString());
    }
  }
}

class SignInSignUpResult {
  final User user;
  final String message;

  SignInSignUpResult({required this.user, required this.message});
}
