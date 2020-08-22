import 'package:apps_ecom/Providers/Services/Categories.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum Actions { AddCart, Delete }

class Favoris extends StatefulWidget {
  @override
  _FavorisState createState() => _FavorisState();
}

class _FavorisState extends State<Favoris> {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context, listen: false);
    print(productsData.favoriteItems);
    final dataFavoris = productsData.favoriteItems;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFFee7b77)),
        backgroundColor: Colors.white,
        title: Text(
          'Mes Favoris',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(color: Colors.red),
        child: (dataFavoris.length == 0)
            ? Center(
                child: Text(
                'Aucun Favoris',
                style: TextStyle(
                  fontSize: 18,
                ),
              ))
            : ListView.builder(
                itemCount: dataFavoris.length,
                itemBuilder: (_, index) {
                  print(dataFavoris[index].id);
                  final loadedCategrie =
                      Provider.of<Categories>(context, listen: false)
                          .findById(dataFavoris[index].categorie);
                  return Column(
                    children: [
                      Card(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width,
                          // decoration: BoxDecoration(color: Colors.red),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                dataFavoris[index].picture),
                                            fit: BoxFit.cover)),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    // color: Colors.amber,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          dataFavoris[index].title,
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          loadedCategrie.title,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Text(
                                          '${dataFavoris[index].price} Frs',
                                          style: TextStyle(color: Colors.red),
                                        )
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  child: Container(
                                child: PopupMenuButton<Actions>(
                                    onSelected: (Actions selectedValue) {
                                      // print(selectedValue);
                                      setState(() {
                                        if (selectedValue == Actions.AddCart) {
                                          print('Add cart');
                                          Scaffold.of(context).showSnackBar(
                                              SnackBar(
                                                  backgroundColor:
                                                      Color(0xFFee7b77),
                                                  content: Text(
                                                      'Votre Produit a bien été Ajouté',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white))));
                                        } else {
                                          print('Supprimer');

                                          dataFavoris[index]
                                              .toggleFavoriteStatus();

                                          Scaffold.of(context).showSnackBar(
                                              SnackBar(
                                                  backgroundColor:
                                                      Color(0xFFee7b77),
                                                  content: Text(
                                                    'Votre Produit a bien été Supprimé',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )));
                                        }
                                      });
                                    },
                                    itemBuilder: (_) => [
                                          PopupMenuItem(
                                            child: Text('Ajouter au Panier'),
                                            value: Actions.AddCart,
                                          ),
                                          PopupMenuItem(
                                            child:
                                                Text('Supprimer de la Liste'),
                                            value: Actions.Delete,
                                          )
                                        ]),
                                // color: Colors.blue,
                              ))
                            ],
                          ),
                        ),
                      ),
                      Divider()
                    ],
                  );
                }),
      ),
    );
  }
}
