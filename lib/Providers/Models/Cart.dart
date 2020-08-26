import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final Product product;
  final int quantity;
  final double price;
  final String etat;

  CartItem(
      {@required this.id,
      @required this.product,
      @required this.quantity,
      @required this.price,
      this.etat});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};
  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(String productId, double price, Product product) {
    if (_items.containsKey(productId)) {
      //Change quantity
      _items.update(
          productId,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              product: existingCartItem.product,
              price: existingCartItem.price,
              quantity: existingCartItem.quantity + 1));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
                id: DateTime.now().toString(),
                product: product,
                quantity: 1,
                price: price,
              ));
    }
    notifyListeners();
  }

  void removeItem(int productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
