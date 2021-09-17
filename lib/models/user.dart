part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String profilePicture;
  final String name;
  final List<String> selectdGenres;
  final String selectedLanguage;
  final int balance;

  User(this.id, this.email,
      {this.profilePicture,
      this.name,
      this.selectdGenres,
      this.selectedLanguage,
      this.balance});

  @override
  // TODO: implement props
  List<Object> get props => [
        id,
        email,
        name,
        profilePicture,
        selectdGenres,
        selectedLanguage,
        balance,
      ];
}
