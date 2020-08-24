import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Categories.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var productId = ModalRoute.of(context).settings.arguments as int;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(this.id);
    final loadedCategrie = Provider.of<Categories>(context, listen: false)
        .findById(loadedProduct.categorie);

    return ChangeNotifierProvider.value(
      value: loadedProduct,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xFFee7b77)),
          backgroundColor: Colors.white,
          title: Text(
            loadedProduct.title,
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.share,
                  color: Color(0xFFee7b77),
                ),
                onPressed: null)
          ],
        ),
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height / 8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                        height: MediaQuery.of(context).size.height / 8,
                        child: MaterialButton(
                          child: Center(
                            child: Text(
                              'Ajouter au Panier',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        color: Color(0xFF00b169))),
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height / 8,
                  child: MaterialButton(
                      child: Icon(Icons.card_travel), onPressed: () {}),
                ))
              ],
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(color: Colors.red),
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.yellow),
                child: Stack(
                  children: [
                    PageView.builder(
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(loadedProduct.picture),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    Positioned(
                        top: 15,
                        right: 10,
                        child: Consumer<Product>(
                          builder: (ctx, product, _) => FloatingActionButton(
                              backgroundColor: Colors.white,
                              child: Icon(
                                product.isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                product.toggleFavoriteStatus();
                              }),
                        ))
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.grey[100]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(loadedProduct.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(loadedCategrie.title),
                    Text(loadedProduct.etat.toString()),
                    Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.grey[200]),
                        child: Center(
                            child: Text(
                          loadedProduct.price.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )))
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(color: Colors.amber),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 14,
                      // decoration: BoxDecoration(color: Colors.green),
                      child: Column(
                        children: [
                          Text('Garantie authenticité',
                              style: TextStyle(
                                  color: Color(0xFFee7b77),
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Votre Shopping en tout confinace',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 14,
                      // decoration: BoxDecoration(color: Colors.green),
                      child: Column(
                        children: [
                          Text('Satisfait ou Remboursé',
                              style: TextStyle(
                                  color: Color(0xFFee7b77),
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Vous pouvez charger d\'avis',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 14,
                      // decoration: BoxDecoration(color: Colors.green),
                      child: Column(
                        children: [
                          Text('Protections Acheteurs & Vendeurs',
                              style: TextStyle(
                                  color: Color(0xFFee7b77),
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'BabiShop s\'engage à vos côtés',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ExpansionTile(
                title: Text('Details de l\'Article'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text('Ref. produit: '),
                              Text('123456789')
                            ],
                          ),
                          Row(
                            children: [
                              Text('Couleur: '),
                              Text('Kaki'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Etat: '),
                              Text('Neuf'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Taille: '),
                              Text('XXL'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('Prix et Modes de Paiement'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                              'Le montant total à payer par l\'acheteur comprendra: \n - Le prix de l\'article determiné par le vendeur \n - les frais de service correspondant à 1.00£ \n - les frais de livraison')
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('Commentaires(0)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1)),
                        child: MaterialButton(
                          child: Center(
                              child: Text('LAISSER UN COMMENTAIRE',
                                  style: TextStyle())),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                  child: Column(
                    children: [
                      Text('La Communauté aime cet article',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.person, color: Colors.red[200]),
                            Text('40'),
                            Text('Visites de la Page')
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.card_travel, color: Colors.red[200]),
                            Text('1'),
                            Text('ajouts du vendeur')
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('A propos du vendeur',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  // color: Colors.amber,
                                  border: Border.all(
                                      color: Colors.grey[300], width: 5),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Icon(
                                Icons.person,
                                size: 100,
                                color: Colors.grey[300],
                              ),
                            ),
                            Text(
                              'Nom de Vendeur',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              'Address du vendeur',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )
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
