import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:flutter/foundation.dart';

class SousCat with ChangeNotifier {
  final int id;
  final String title;
  final String image;
  List<Product> products;

  SousCat({this.id, this.title, this.image, this.products});
}
