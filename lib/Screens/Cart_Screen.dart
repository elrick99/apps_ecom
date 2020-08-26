import 'dart:async';

import 'package:apps_ecom/Providers/Models/Cart.dart';
import 'package:apps_ecom/Widgets/Cart_Item_List.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Widget> view = [
    Container(
      // color: Colors.blue,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            child: Icon(
              Icons.thumb_up,
              color: Color(0xFFee7b77),
              size: 50,
            ),
          ),
          Text(
            'Garantie satisfait ou Remboursé',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Sous réserve d\'éligibilité',
            style: TextStyle(color: Colors.grey[300]),
          )
        ],
      ),
    ),
    Container(
      // color: Colors.blue,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            child: Icon(
              Icons.assistant,
              color: Color(0xFFee7b77),
              size: 50,
            ),
          ),
          Text(
            'Payez en plusieurs fois',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Sous réserve d\'éligibilité',
            style: TextStyle(color: Colors.grey[300]),
          )
        ],
      ),
    )
  ];

  int _currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 10),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    print('//////CART///////');
    print(cart.items.length);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Mon Panier',
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        alignment: Alignment.topLeft,
        height: MediaQuery.of(context).size.height / 4.3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                height: MediaQuery.of(context).size.height / 8,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text('TOTAL ', style: TextStyle(fontSize: 18)),
                      Text('${cart.totalAmount} \$',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))
                    ],
                  ),
                ),
              )),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: MediaQuery.of(context).size.height / 11,
                      child: MaterialButton(
                        child: Center(
                          child: Text(
                            'Continuer',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        onPressed: () {
                          // cart.addItem(loadedProduct.id.toString(),
                          //     loadedProduct.price, loadedProduct);
                        },
                      ),
                      color: Color(0xFF00b169))),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(color: Colors.red),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(color: Colors.yellow),
                child: PageView.builder(
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: view.length,
                    itemBuilder: (context, index) {
                      return view[index];
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  // height: MediaQuery.of(context).size.height / 2,
                  // width: MediaQuery.of(context).size.width,
                  child: (cart.items.isEmpty)
                      ? Center(
                          child: Text(
                          'Aucun Produit',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ))
                      : ListView.builder(
                          itemCount: cart.items?.length ?? 0,
                          itemBuilder: (context, index) {
                            return CartItemList(
                              quantity:
                                  cart.items.values.toList()[index].quantity,
                              product:
                                  cart.items.values.toList()[index].product,
                              id: cart.items.values.toList()[index].id,
                              price: cart.items.values.toList()[index].price,
                            );
                          })),
              // ...cart.items.values.map((e) => null)
            ],
          ),
        ),
      ),
    );
  }
}
