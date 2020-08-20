import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 1,
        title: 'Pantalon',
        description: 'Meilleur Prix',
        price: 470.90,
        etat: Etat.Neuf,
        point: 4,
        picture:
            'https://www.cdiscount.com/pdt2/1/7/5/1/700x700/mp20720175/rw/basket-nike-air-max-97-lx-noir-av1165-001.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 1,
        sousCategorie: 12),
    Product(
        id: 2,
        title: 'Basket',
        description: 'Chemise Bleu',
        price: 470.90,
        etat: Etat.Amoche,
        point: 2,
        picture:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 1,
        sousCategorie: 5),
    Product(
        id: 3,
        title: 'Montre Homme',
        description: 'Meilleur Prix',
        price: 470.90,
        etat: Etat.Neuf,
        point: 4,
        picture:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 1,
        sousCategorie: 6),
    Product(
        id: 4,
        title: 'Parfumns',
        description: 'Meilleur Prix',
        price: 500.90,
        etat: Etat.QuasiNeuf,
        point: 4,
        picture:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture2:
            'https://cdn.def-shop.com/original/nike-baskets-multicolore-702802.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 2,
        sousCategorie: 8),
    Product(
        id: 5,
        title: 'Basket Nike Air',
        description: 'Meilleur Prix',
        price: 470.90,
        etat: Etat.QuasiNeuf,
        point: 4,
        picture:
            'https://cdn.def-shop.com/original/nike-baskets-multicolore-702802.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 2,
        sousCategorie: 5),
    Product(
        id: 6,
        title: 'Poudres',
        description: 'Meilleur Prix',
        price: 470.90,
        etat: Etat.QuasiNeuf,
        point: 4,
        picture:
            'https://static.nike.com/a/images/f_auto/dpr_2.0/h_375,c_limit/8796a413-05cd-4db1-8e5f-1542d8b61cec/nike-basketball.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 3,
        sousCategorie: 9),
    Product(
        id: 6,
        title: 'Parfumn Hello',
        description: 'Meilleur Prix',
        price: 470.90,
        etat: Etat.QuasiNeuf,
        point: 4,
        picture:
            'https://static.galerieslafayette.com/media/596/59672481/G_59672481_325_VFP_1.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 4,
        sousCategorie: 10),
    Product(
        id: 7,
        title: 'Parfumn Hella ',
        description: 'Synthétique Une nouvelle version de nos chaussures',
        price: 209.99,
        etat: Etat.QuasiNeuf,
        point: 4,
        picture:
            'https://www.cdiscount.com/pdt2/1/7/5/1/700x700/mp20720175/rw/basket-nike-air-max-97-lx-noir-av1165-001.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 5,
        sousCategorie: 11),
    Product(
        id: 9,
        title: 'Chapeau Enfant',
        description:
            'CuirRafraîchis ton style avec les baskets Air Force 1 Shadow',
        price: 108.90,
        etat: Etat.Neuf,
        point: 4,
        picture:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQtjAyfltQNPQQjkVrwP6bEnArECnykZ-MGOw&usqp=CAU',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 5,
        sousCategorie: 6),
    Product(
        id: 8,
        title: 'Ballerine',
        description: 'collection de Nike dans notre catalogue de Baskets',
        price: 179.95,
        etat: Etat.QuasiNeuf,
        point: 4,
        picture:
            'https://www.dmsports.fr/9728-thickbox_default/basket-nike-air-max-90-ltr-ps.jpg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 3,
        sousCategorie: 5),
    Product(
        id: 10,
        title: 'Tee-Shirt',
        description: 'asket nike air max 95 og.la basket nike air max',
        price: 151.05,
        etat: Etat.Amoche,
        point: 4,
        picture:
            'https://medias.go-sport.com/media/resized/1300x/catalog/product/f6/cc/39/5c/basket-nike-air-max-95-og---307960-108_1_v10.jpeg',
        picture1:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg',
        picture2:
            'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-qs-at5458-002-1360318653_ML.jpg',
        picture3:
            'https://downtownstock.com/40283-large_default/nike-basket-nike-w-air-max-97-lx-ar7621-001.jpg',
        taille: '39',
        marque: 'Nike',
        categorie: 3,
        sousCategorie: 12)
  ];

  // var _showFavotitesOnly = false;

  List<Product> get items {
    // if (_showFavotitesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems =>
      _items.where((prodItem) => prodItem.isFavorite).toList();

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavotitesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavotitesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
