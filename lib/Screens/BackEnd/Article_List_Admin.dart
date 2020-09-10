import 'package:apps_ecom/Providers/Models/Boutique.dart';
import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Screens/BackEnd/Details_Article_Admin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class ArticleListAdmin extends StatefulWidget {
  final Boutique boutique;
  final FirebaseUser user;
  const ArticleListAdmin({Key key, this.boutique, this.user}) : super(key: key);
  @override
  _ArticleListAdminState createState() => _ArticleListAdminState();
}

class _ArticleListAdminState extends State<ArticleListAdmin> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    final provider = Provider.of<Products>(context);
    provider.getProductsBoutique(widget.boutique);
  }

  List<Product> product;
  @override
  Widget build(BuildContext context) {
    final providerArticle = Provider.of<Products>(context).productBoutique;
    print(providerArticle.length);

    // print('////////////////ACTICLE BOUTIQUE///////////');
    // print(providerArticle);
    // print(providerArticle.map((e) => print(e.title)));
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('Mes Produits',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black))),
        body: (providerArticle.length == 0)
            ? Center(
                child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Color(0xff562fbe)),
              ))
            : Padding(
                padding: const EdgeInsets.all(4.0),
                child: new StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  itemCount: providerArticle.length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: (index.isEven)
                        ? const EdgeInsets.only(top: 10.0)
                        : const EdgeInsets.only(top: 30.0),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailArticleAdmin())),
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      providerArticle[index].picture),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 7,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: Column(
                                  children: [
                                    Text(providerArticle[index].title,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    Expanded(
                                        child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$ ${providerArticle[index].price}',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Container(
                                              child: Row(
                                            children: [
                                              Icon(
                                                Icons.favorite,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                '4$index prs',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ))
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  staggeredTileBuilder: (int index) =>
                      new StaggeredTile.count(2, (index.isEven) ? 3.5 : 4),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ));
  }
}
