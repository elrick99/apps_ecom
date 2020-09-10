import 'dart:io';

import 'package:apps_ecom/Providers/Models/Boutique.dart';
import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Models/User.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Products with ChangeNotifier {
  String datacode;
  List<Product> _items = [];

  Future<bool> postProducts(
      {String description,
      String marque,
      String etat,
      String titre,
      String taille,
      double price,
      int catId,
      int souCatId,
      String userid,
      Boutique boutique,
      File sampleImage}) async {
    final String url =
        "https://appsecom-839d9.firebaseio.com/boutique/${boutique.id}/products.json";

    /**
       * Envoie de Photo
       */
    final StorageReference postImageRef =
        FirebaseStorage.instance.ref().child("Post Images");
    var timeKey = DateTime.now();
    final StorageUploadTask uploadTask =
        postImageRef.child(timeKey.toString() + ".jpg").putFile(sampleImage);

    var ImageUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
    String urls = ImageUrl.toString();

    /**
       * Reception des Donnée du formulaire
       */

    try {
      Product products = Product(
          title: titre,
          description: description,
          price: price,
          etat: etat == 'Neuf' ? Etat.Neuf : Etat.QuasiNeuf,
          picture: urls,
          taille: taille,
          marque: marque,
          categorie: catId,
          sousCategorie: souCatId,
          admin: userid);

      /**
       * Envoie de donnée
       */
      var response = await http.post(url, body: jsonEncode(products.toJson()));
      Map datas = jsonDecode(response.body);
      // print('////////////////NAME/**/*/*/*/*/*/*/*/*/*/*');
      // print(datas['name']);

      //     DatabaseReference databaseReference = FirebaseDatabase.instance.reference();

      // var data = {
      //   "image": url,
      //   // "description": _myvalue,
      //   "time": time,
      //   "date": date,
      // };
      // databaseReference.child('Image').push().set(data);

      String urlProduct =
          "https://appsecom-839d9.firebaseio.com/products/${datas['name']}.json";
      var responseProducts =
          await http.post(urlProduct, body: jsonEncode(products.toJson()));
      Map datasProdu = jsonDecode(responseProducts.body);
      return true;
    } catch (e) {
      print(e);
    }
  }

  List<Product> _productBoutique = [];
  List<Product> get productBoutique {
    // if (_showFavotitesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._productBoutique];
  }

  /**
   * GET Boutique
   */

  Future<List<Product>> getProductsBoutique(Boutique boutique) async {
    final String url =
        "https://appsecom-839d9.firebaseio.com/boutique/${boutique.id}/products.json";
    try {
      var response = await http.get(url);
      // print(response.body);
      if (response.statusCode == 200) {
        _productBoutique = [];
        // print('////////// Insérer dans le provider /////////');
        // print(response.body);
        Map<String, dynamic> data = json.decode(response.body);
        int i = 0;

        data.forEach((key, value) {
          // print(key);
          _productBoutique.add(Product(
              id: i++,
              code: key,
              title: value['title'],
              description: value['description'],
              price: value['price'],
              etat: value['etat'] == 'Neuf' ? Etat.Neuf : Etat.QuasiNeuf,
              point: null,
              picture: value['picture'],
              picture1: null,
              picture2: null,
              picture3: null,
              marque: value['marque'],
              categorie: value['categorie'],
              sousCategorie: value['sousCategorie']));
          //  _items.add(product);
        });
        // print(product.length);
        // _items.length;
        // print(product);
        // data.forEach((key, value) {
        // print(value['products']);
        // product = json.decode(value['products']);
        // print(product);
        // });

        // product.forEach((key1, value1) {
        //   print(key1);
        // });
        // // print(_item.length);
        // print('////////// Fin Insertion dans le provider /////////');
        notifyListeners();
        // return product;
      }
    } catch (e) {
      print(e);
    }
  }

  // var _showFavotitesOnly = false;

  /**
   * GET Produit
   */

  Future<void> getProducts() async {
    final String url = "https://appsecom-839d9.firebaseio.com/products.json";
    try {
      var response = await http.get(url);
      // print(response.body);
      if (response.statusCode == 200) {
        _items = [];
        // print('////////// Insérer dans le provider /////////');
        Map<String, dynamic> data = json.decode(response.body);
        Map<String, dynamic> produits = {};
        List<String> keys = [];
        data.forEach((key1, value) {
          produits.addAll(value);
          keys.add(key1);
          // print(key1);
        });
        // print(keys);
        int i = 0;
        produits.forEach((key, value) {
          i++;
          int a = i - 1;

          // print(a);
          _items.add(Product(
              isFavorite: value['isFavorite'],
              id: a,
              code: keys[a],
              title: value['title'],
              description: value['description'],
              price: value['price'],
              etat: value['etat'] == 'Neuf' ? Etat.Neuf : Etat.QuasiNeuf,
              point: null,
              picture: value['picture'],
              picture1: null,
              picture2: null,
              picture3: null,
              marque: value['marque'],
              categorie: value['categorie'],
              sousCategorie: value['sousCategorie']));
          // print(value['admin']);
        });
        // print('////////// Fin Insertion dans le provider /////////');
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }

  /**
   * ADD FAVORIS
   */

  Future<bool> postFavoris({String key}) async {
    bool isFavorite;
    String email;
    String urlfinal;
    String keys;
    final String urlP =
        'https://appsecom-839d9.firebaseio.com/products/$key.json';

    try {
      var response = await http.get(urlP);
      if (response.statusCode == 200) {
        _items = [];
        Map<String, dynamic> data = json.decode(response.body);
        Product product;

        data.forEach((keye, value) {
          keys = keye;
          product = Product(
              isFavorite: value['isFavorite'] == false ? true : false, code: key
              // userFavoris:
              );
          // print(value);
          // keys = key;
        });
        // print(product.admin);
        // Map datFav = {'isFavorite': false};

        urlfinal =
            "https://appsecom-839d9.firebaseio.com/products/$key/$keys/isFavorite.json";
        var responseFavorisP =
            await http.put(urlfinal, body: jsonEncode(product.isFavorite));
        print(responseFavorisP.body);
        if (product.isFavorite == true) {
          String urlfavoris =
              "https://appsecom-839d9.firebaseio.com/products/$key/$keys/userFavoris.json";
          var responseFavorisPUser =
              await http.post(urlfavoris, body: jsonEncode(product.toJson()));
          print(responseFavorisPUser);
        }
        // print('///////////BOUTIQUE PRODUITS //////');

        // /**
        //  * GET PRODUITS BOUTIQUE
        //  */

        // final String urlB = 'https://appsecom-839d9.firebaseio.com/boutique';
        // var responseB = await http.get(urlB);

        // Map<String, dynamic> dataB = json.decode(responseB.body);
        // print(dataB);
        // dataB.forEach((key, value) {
        //   print(value);
        // });
        return true;
      }
    } catch (e) {}
  }

  List<Product> get items {
    // if (_showFavotitesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems =>
      _items.where((prodItem) => prodItem.isFavorite).toList();

  Product findById(int id) {
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
