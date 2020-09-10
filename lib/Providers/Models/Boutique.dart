import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Models/User.dart';
import 'package:flutter/foundation.dart';

class Boutique with ChangeNotifier {
  final String id;
  final String type;
  final String description;
  final User user;
  List<Product> products;

  Boutique({this.id, this.type, this.description, this.user, this.products});
}
