import 'package:apps_ecom/Providers/Models/User.dart';
import 'package:flutter/foundation.dart';

enum Etat { Neuf, QuasiNeuf, Amoche }

class Product with ChangeNotifier {
  final int id;
  final String title;
  final String description;
  final double price;
  final Etat etat;
  bool isFavorite;
  final int point;
  final String picture;
  final String picture1;
  final String picture2;
  final String picture3;
  final String taille;
  final String marque;
  final int categorie;
  final int sousCategorie;
  List<User> userFavoris;
  final User admin;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.etat,
      this.isFavorite = false,
      @required this.point,
      @required this.picture,
      @required this.picture1,
      @required this.picture2,
      @required this.picture3,
      this.taille,
      @required this.marque,
      @required this.categorie,
      @required this.sousCategorie,
      this.userFavoris,
      this.admin});

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
