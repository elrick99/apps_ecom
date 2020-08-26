import 'package:apps_ecom/Providers/Models/Cart.dart';
import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Categories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItemList extends StatelessWidget {
  final String id;
  final Product product;
  final int quantity;
  final double price;
  final String etat;

  CartItemList(
      {Key key, this.id, this.product, this.quantity, this.price, this.etat})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    /**
     * ALERT DIALOG
     */

    showAlertDialog(BuildContext context) {
      // set up the button
      Widget okButton = FlatButton(
        child: Text("OK"),
        onPressed: () {},
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Center(child: Text("Panier")),
        content: Text(
            "Etes-vous sûr de vouloir supprimer cet article de votre panier ?"),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    final categorie =
        Provider.of<Categories>(context).findById(product.categorie);
    return Card(
      elevation: 7,
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(color: Colors.amber),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Vendu Par Atto 4410',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Icon(Icons.location_on),
                      Text(
                        'Abidjan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 17),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 5,
              child: Container(color: Colors.grey[300]),
            ),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              showAlertDialog(context);
                              // Provider.of<Cart>(context, listen: false).removeItem(productId);
                            },
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(product.picture),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(product.title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(categorie.title,
                                      style: TextStyle(fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(product.taille,
                                      style: TextStyle(fontSize: 17)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${product.price}\$',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ))
                  ],
                )),
            SizedBox(
              height: 5,
              child: Container(color: Colors.grey[300]),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Livraison',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                      Text('Lieu de la Livraison'),
                      IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                          onPressed: () {})
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
