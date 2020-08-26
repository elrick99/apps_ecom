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

  // int _currentPage = 0;
  // PageController _pageController = PageController(
  //   initialPage: 0,
  // );

  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 3), (Timer timer) {
  //     if (_currentPage < 2) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }

  //     _pageController.animateToPage(
  //       _currentPage,
  //       duration: Duration(milliseconds: 10),
  //       curve: Curves.easeIn,
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    int i = 0;
    final cart = Provider.of<Cart>(context);

    print('//////CART///////');
    print(cart.items.length);
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                // color: Colors.pink,
                height: MediaQuery.of(context).size.height / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('TOTAL ', style: TextStyle(fontSize: 18)),
                    Expanded(
                      child: (cart.items.isEmpty)
                          ? Text('0 \$',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                          : Text(
                              '${cart.monTotal(cart.totalAmount, cart.fraisLivraison(cart.totalAmount)).ceil()} \$',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                    )
                  ],
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
      body: (cart.items.isEmpty)
          ? Center(
              child: Text(
              'Panier Vide',
              style: TextStyle(
                fontSize: 18,
              ),
            ))
          : Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(color: Colors.red),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.yellow),
                      child: PageView.builder(
                          // controller: _pageController,
                          scrollDirection: Axis.horizontal,
                          itemCount: view.length,
                          itemBuilder: (context, index) {
                            return view[index];
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ...cart.items.values.map((e) {
                      i++;
                      int a = i - 1;
                      return CartItemList(
                        quantity: cart.items.values.toList()[a].quantity,
                        product: cart.items.values.toList()[a].product,
                        id: cart.items.values.toList()[a].id,
                        price: cart.items.values.toList()[a].price,
                      );
                    }),
                    Card(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width,
                        // decoration: BoxDecoration(color: Colors.red),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  // color: Colors.amber,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Récapitulatif de commande',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                              child: Container(color: Colors.grey[300]),
                            ),
                            Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    // color: Colors.pink,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Article(s)'),
                                              Text(
                                                  '${cart.totalAmount.ceil()}\$')
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Frais de livraison'),
                                              Text(
                                                  '${cart.fraisLivraison(cart.totalAmount).ceil()} £')
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Frais de service'),
                                              Text('200 \$')
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              6,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[300]),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Icon(
                                                    Icons.check,
                                                    size: 30,
                                                    color: Colors.green,
                                                  ),
                                                  Icon(
                                                    Icons.check,
                                                    size: 30,
                                                    color: Colors.green,
                                                  ),
                                                  Text(''),
                                                  Text('')
                                                ],
                                              )),
                                              Expanded(
                                                  flex: 3,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          'Garantie Authenticité'),
                                                      Text(
                                                          'Garantie Satisfait ou Remboursé'),
                                                      Text(
                                                        'Et bien davantage !',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFee7b77),
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            decorationColor:
                                                                Color(
                                                                    0xFFee7b77)),
                                                      )
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: Text('TOTAL TTC',
                                                      style: TextStyle(
                                                          fontSize: 18))),
                                              Expanded(
                                                  flex: 1,
                                                  child: Center(
                                                    child: Text(
                                                      '${cart.monTotal(cart.totalAmount, cart.fraisLivraison(cart.totalAmount)).ceil()} \$',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFFee7b77),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
