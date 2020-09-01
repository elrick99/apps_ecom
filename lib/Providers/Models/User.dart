import 'package:flutter/foundation.dart';

enum OptionGenre { Femme, Homme }

class User with ChangeNotifier {
  final String id;
   String nom;
   String prenom;
   OptionGenre genre;
   String email;
  final String telnumber;
  final String dtenaiss;
  final String password;
  final String adress1;
  final String adress2;

  User(
      { this.id,
       this.nom,
       this.prenom,
       this.genre,
       this.email,
       this.telnumber,
       this.dtenaiss,
       this.password,
      this.adress1,
      this.adress2});
}
