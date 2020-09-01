import 'package:flutter/foundation.dart';

enum OptionGenre { Femme, Homme }

class User with ChangeNotifier {
  final int id;
  final String nom;
  final String prenom;
  final OptionGenre genre;
  final String email;
  final String telnumber;
  final String dtenaiss;
  final String password;
  final String adress1;
  final String adress2;

  User(
      {@required this.id,
      @required this.nom,
      @required this.prenom,
      @required this.genre,
      @required this.email,
      @required this.telnumber,
      @required this.dtenaiss,
      @required this.password,
      this.adress1,
      this.adress2});
}
