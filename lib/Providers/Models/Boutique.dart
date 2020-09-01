import 'package:apps_ecom/Providers/Models/User.dart';
import 'package:flutter/foundation.dart';

class Boutique with ChangeNotifier {
  final String type;
  final String description;
  final User user;

  Boutique(this.type, this.description, this.user);
}
