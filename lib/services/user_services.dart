import 'package:bwa_flutix/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices {
  static CollectionReference _userCollection =
      Firestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    // untuk si genresnya kan typenya string pisah. fungsi mathod dbawah tu buat list String itu jadi 1 String cuma d pisah sama ,(koma)
    String genres = "";

    for (var genres in user.selectdGenres) {
      genres += genres + ((genres != user.selectdGenres.last) ? "," : '');
    }

    _userCollection.document(user.id).setData({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'selectedGenres': user.selectdGenres,
      'selectedLanguage': user.selectedLanguage,
      'profilePicture': user.profilePicture ?? ""
    });
  }
}
