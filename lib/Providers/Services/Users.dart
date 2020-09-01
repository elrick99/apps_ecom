import 'dart:convert';

import 'package:apps_ecom/Providers/Models/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class UsersService with ChangeNotifier{

  List<User> _items=[];

  List<User> get items=>[..._items];

  Future<void> addUser( String password, prenom, genre, email, nom) async{
     final String url="https://appsecom-839d9.firebaseio.com/user.json";
     final Map< String, dynamic> data= {
       "nom":nom,
        "prenom":prenom,
        "email":email,
        "password":password,
        "genre":genre,
      };
      print(data);
     
      try{
        var response = await http.post(url, body:json.encode(data));
        var newUser= User( 
          id:json.decode(response.body)['nom'],
          nom: nom,
          prenom: prenom,
          email: email,
          password: password,
          genre: (genre == 'Femme')?OptionGenre.Homme:OptionGenre.Homme 
        );
        _items.insert(0, newUser);
        notifyListeners();
      
      
      }catch(e){
        print(e);
      }
    }

}


// ///
// /// J"AJOUTE MES PRODUIT DAN MA BASE DE DONNEE
// ///
//   Future<void> addItem(Product product)async{
//     final String url = 'https://flutter-shoping.firebaseio.com/products.json';
//     final Map<String, dynamic> data = {
//       'title': product.title,
//       'description': product.description,
//       'imageUrl': product.imageUrl,
//       'price': product.price,
//       'isFavorite': product.isfavorite,
//     };
//     try{
//     ///
//     /// IL FAUT ENCODER LA DATA AVANT DE L'ENVOYER 
//     /// lorsqu'on envoie les donnee en ligne on encode 
//     /// et lorsque on reçoit les donnée on decode
//       http.Response response = await http.post(url, body: json.encode(data));
//       var newProduct = Product(
//         id: json.decode(response.body)['name'], 
//         title: product.title, 
//         price: product.price, 
//         imageUrl: product.imageUrl, 
//         description: product.description
//         );

//       _items.insert(0, newProduct);
//       notifyListeners();

//     }catch(error){
//       throw error;
//     }
    
//   }