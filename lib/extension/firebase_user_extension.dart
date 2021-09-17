part of 'extension.dart';

extension FirebaseUserExtenson on FirebaseUser {
  User convertToUser(
          {String name = "No Name",
          List<String> selectedGenres = const [],
          String selectedLanguage = "English",
          int balance = 50000}) =>
      User(
        this.uid,
        this.email,
        name: name,
        balance: balance,
        selectedGenres: selectedGenres,
        selectedLanguage: selectedLanguage,
      );
}