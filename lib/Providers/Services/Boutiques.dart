import 'dart:convert';

import 'package:apps_ecom/Providers/Models/Boutique.dart';
import 'package:apps_ecom/Providers/Models/User.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Boutiques with ChangeNotifier {
  List<Boutique> _item = [];
  List<Boutique> get item => _item;

  Future<void> postBoutique(
      String type,
      String description,
      String genre,
      String prenom,
      String nom,
      String pays,
      String adresse,
      String codePostal,
      String ville,
      String telephone) async {
    Map data = {
      'type': type,
      'description': description,
      'genre': genre,
      'prenom': prenom,
      'nom': nom,
      'pays': pays,
      'adresse': adresse,
      'codePostal': codePostal,
      'ville': ville,
      'telephone': telephone
    };
    final String url = "https://appsecom-839d9.firebaseio.com/Boutique.json";

    try {
      var response = await http.post(url, body: jsonEncode(data));
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
