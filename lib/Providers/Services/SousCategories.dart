import 'package:apps_ecom/Providers/Models/Categorie.dart';
import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Models/SousCategorie.dart';
import 'package:flutter/material.dart';

class SousCategories with ChangeNotifier {
  List<SousCat> _items = [
    SousCat(
        id: 1,
        title: 'Tout-Homme',
        image:
            'https://zog-zog.fr/wp-content/uploads/2019/05/quel-accessoire-utiliser.png',
        products: [
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
        ]),
    SousCat(
        id: 2,
        title: 'Tout-Bébé',
        image:
            'https://www.grossiste-en-ligne.com/27121-large_default/magnifique-blouse-camel-col-dechire-a-la-mode-vetement-femme.jpg',
        products: [
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
              id: 10,
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
              id: 11,
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
        ]),
    SousCat(
        id: 3,
        title: 'Tout-Garçon',
        image:
            'https://designmag.fr/wp-content/uploads/v%C3%AAtement-gar%C3%A7on-short-noir-sandale-dolce-gabbana.jpg',
        products: [
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
        ]),
    SousCat(
        id: 4,
        title: 'Tout-Femme',
        image:
            'https://www.grossiste-en-ligne.com/27121-large_default/magnifique-blouse-camel-col-dechire-a-la-mode-vetement-femme.jpg',
        products: [
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
        ]),
    SousCat(
        id: 5,
        title: 'Chaussures',
        image:
            'https://i.pinimg.com/originals/c8/46/0b/c8460b2ff0bd254214941eb9ff0c8bd9.jpg',
        products: [
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
              id: 10,
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
        ]),
    SousCat(
        id: 6,
        title: 'Accesoires',
        image:
            'https://lh3.googleusercontent.com/proxy/nhp5OKh6Gt5X0JuOWD-eS-K2fBP0RXP-I0QNBxqbQ-pzRAG6QJ62MbZ6DRffy5ij5Nu_RDXiDT6CY8ifB0b6j_QbG9LHe39Ir95ReQ-My5KGaYXFWj68siQnBG2qftuuNJKaT0JOL7uvfVXcyG0HWVMoNtRecu60qH7hUqS1VKPsvVKUvcUqIgnVk7PP9FKExz8',
        products: [
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
        ]),
    SousCat(
      id: 7,
      title: 'Parfumns & Soins',
      image:
          'https://www.prime-beaute.com/wp-content/uploads/2018/12/bleu-parfum-les-plus-vendus.jpg',
    ),
    SousCat(
        id: 8,
        title: 'Parfumns & Beauté',
        image:
            'https://www.parfumdo.com/19958-large_default/la-nuit-tresor-vaporisateur-eau-de-parfum.jpg',
        products: [
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
        ]),
    SousCat(
        id: 9,
        title: 'Soins Bébé',
        image:
            'https://previews.123rf.com/images/matka_w/matka_w1412/matka_w141200029/34399939-panier-plein-d-accessoires-pour-b%C3%A9b%C3%A9-enfants.jpg',
        products: [
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
        ]),
    SousCat(
        id: 10,
        title: 'Parfumns Filles',
        image:
            'https://www.tendance-parfums.com/media/wysiwyg/CHOISIR-PARFUM/nina-parfum-ado-fille.jpg',
        products: [
          Product(
              id: 7,
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
        ]),
    SousCat(
        id: 11,
        title: 'Parfumns Garçon',
        image:
            'https://www.news-parfums.com/27259-tm_large_default/garcon-eau-de-toilette.jpg',
        products: [
          Product(
              id: 8,
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
        ]),
    SousCat(
      id: 12,
      title: 'Vêtements',
      image:
          'https://www.cdiscount.com/pdt2/4/0/7/1/700x700/mp08523407/rw/vetements-bebe-garcon-nouveau-ne-body-police-degui.jpg',
    ),
    SousCat(
      id: 13,
      title: 'Tout-Fille',
      image: 'https://media.lahalle.com/media/32-N_2_Ete_Fille-141_N2_V1.jpg',
    ),
  ];

  // var _showFavotitesOnly = false;

  List<SousCat> get items {
    // if (_showFavotitesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  // List<Categories> get favoriteItems =>
  //     _items.where((prodItem) => prodItem.isFavorite).toList();

  // Categories findById(String id) {
  //   return _items.firstWhere((prod) => prod.id == id);
  // }

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
