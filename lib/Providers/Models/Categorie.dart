import 'package:apps_ecom/Providers/Models/SousCategorie.dart';

class Categorie {
  final int id;
  final String title;
  List<SousCat> sousCats;

  Categorie(this.id, this.title, this.sousCats);
}
