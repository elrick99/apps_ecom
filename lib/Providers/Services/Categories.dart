import 'package:apps_ecom/Providers/Models/Categorie.dart';
import 'package:apps_ecom/Providers/Models/SousCategorie.dart';
import 'package:flutter/material.dart';

class Categories with ChangeNotifier {
  List<Categorie> _items = [
    /**
     * Homme
     */
    Categorie(1, 'Homme', [
      SousCat(
        id: 12,
        title: 'Vêtements',
        image:
            'https://www.gazette-professionnelle.fr/wp-content/uploads/2018/12/d16b14a719970a9c8c4e60d84212e34e.jpg',
      ),
      SousCat(
        id: 5,
        title: 'Chaussures',
        image:
            'https://i.pinimg.com/originals/c8/46/0b/c8460b2ff0bd254214941eb9ff0c8bd9.jpg',
      ),
      SousCat(
        id: 6,
        title: 'Accesoires',
        image:
            'https://lh3.googleusercontent.com/proxy/nhp5OKh6Gt5X0JuOWD-eS-K2fBP0RXP-I0QNBxqbQ-pzRAG6QJ62MbZ6DRffy5ij5Nu_RDXiDT6CY8ifB0b6j_QbG9LHe39Ir95ReQ-My5KGaYXFWj68siQnBG2qftuuNJKaT0JOL7uvfVXcyG0HWVMoNtRecu60qH7hUqS1VKPsvVKUvcUqIgnVk7PP9FKExz8',
      ),
      SousCat(
        id: 7,
        title: 'Parfumns & Soins',
        image:
            'https://www.prime-beaute.com/wp-content/uploads/2018/12/bleu-parfum-les-plus-vendus.jpg',
      ),
    ]),

    /**
     * Femme
     */

    Categorie(2, 'Femme', [
      SousCat(
        id: 4,
        title: 'Tout-Femme',
        image:
            'https://www.grossiste-en-ligne.com/27121-large_default/magnifique-blouse-camel-col-dechire-a-la-mode-vetement-femme.jpg',
      ),
      SousCat(
        id: 12,
        title: 'Vêtements',
        image:
            'https://i.pinimg.com/474x/b9/80/7a/b9807a150777566464f3ed48cb927e1c.jpg',
      ),
      SousCat(
        id: 5,
        title: 'Chaussures',
        image: 'https://photos6.andre.fr/photos/840/8401197/8401197_500_A.jpg',
      ),
      SousCat(
        id: 6,
        title: 'Accesoires',
        image:
            'https://www.sodishop.com/wp-content/uploads/2020/03/M4-Montre-Curren-Accessoire-de-Luxe-Couleur-Or-Pour-Femme-SODI00-Sodishop-Mali.jpg',
      ),
      SousCat(
        id: 8,
        title: 'Parfumns & Beauté',
        image:
            'https://www.parfumdo.com/19958-large_default/la-nuit-tresor-vaporisateur-eau-de-parfum.jpg',
      ),
    ]),

    /**
     * Bébé
     */

    Categorie(3, 'Bébé', [
      SousCat(
        id: 2,
        title: 'Tout-Bébé',
        image:
            'https://www.grossiste-en-ligne.com/27121-large_default/magnifique-blouse-camel-col-dechire-a-la-mode-vetement-femme.jpg',
      ),
      SousCat(
        id: 12,
        title: 'Vêtements',
        image:
            'https://www.cdiscount.com/pdt2/4/0/7/1/700x700/mp08523407/rw/vetements-bebe-garcon-nouveau-ne-body-police-degui.jpg',
      ),
      SousCat(
        id: 5,
        title: 'Chaussures',
        image:
            'https://www.echoppe-francaise.fr/2338-large_default/chaussures-ceremonie-bebe-cuir-blanc-ange.jpg',
      ),
      SousCat(
        id: 9,
        title: 'Soins Bébé',
        image:
            'https://previews.123rf.com/images/matka_w/matka_w1412/matka_w141200029/34399939-panier-plein-d-accessoires-pour-b%C3%A9b%C3%A9-enfants.jpg',
      ),
    ]),

    /**
     * Fille
     */

    Categorie(4, 'Fille', [
      SousCat(
        id: 13,
        title: 'Tout-Fille',
        image: 'https://media.lahalle.com/media/32-N_2_Ete_Fille-141_N2_V1.jpg',
      ),
      SousCat(
        id: 12,
        title: 'Vêtements',
        image:
            'https://www.dhresource.com/0x0/f2/albu/g9/M00/2D/49/rBVaWF2EZGyASPLwAAFBezEMYRQ156.jpg/wholesale-baby-girls-clothes-set-2016-2-pcs.jpg',
      ),
      SousCat(
        id: 5,
        title: 'Chaussures',
        image:
            'https://www.chaussures-duretz.com/47912-large_default/chaussures-fille-bellamy.jpg',
      ),
      SousCat(
        id: 6,
        title: 'Accesoires',
        image:
            'https://media.vertbaudet.com/Pictures/vertbaudet/87188/sac-a-dos-fille-brillant.jpg?width=285',
      ),
      SousCat(
        id: 10,
        title: 'Parfumns Fille',
        image:
            'https://www.tendance-parfums.com/media/wysiwyg/CHOISIR-PARFUM/nina-parfum-ado-fille.jpg',
      ),
    ]),

    /**
     * Garçon
     */

    Categorie(5, 'Garçon', [
      SousCat(
        id: 3,
        title: 'Tout-Garçon',
        image:
            'https://designmag.fr/wp-content/uploads/v%C3%AAtement-gar%C3%A7on-short-noir-sandale-dolce-gabbana.jpg',
      ),
      SousCat(
        id: 12,
        title: 'Vêtements',
        image:
            'https://sc02.alicdn.com/kf/HTB19BNTLXXXXXaqXVXX760XFXXXX.png_350x350.png',
      ),
      SousCat(
        id: 5,
        title: 'Chaussures',
        image:
            'https://images-na.ssl-images-amazon.com/images/I/61KMiwfxncL._AC_UY395_.jpg',
      ),
      SousCat(
        id: 6,
        title: 'Accesoires',
        image:
            'https://i.pinimg.com/originals/bb/ae/07/bbae07d0c997c7f983853c487ab166e6.jpg',
      ),
      SousCat(
        id: 11,
        title: 'Parfumns Garçon',
        image:
            'https://www.news-parfums.com/27259-tm_large_default/garcon-eau-de-toilette.jpg',
      ),
    ])
  ];

  // var _showFavotitesOnly = false;

  List<Categorie> get items {
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
