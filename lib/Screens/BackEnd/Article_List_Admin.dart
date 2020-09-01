import 'package:apps_ecom/Screens/BackEnd/Details_Article_Admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ArticleListAdmin extends StatefulWidget {
  @override
  _ArticleListAdminState createState() => _ArticleListAdminState();
}

class _ArticleListAdminState extends State<ArticleListAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Mes Produits',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black))),
      body: new Padding(
        padding: const EdgeInsets.all(4.0),
        child: new StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: (index.isEven)
                ? const EdgeInsets.only(top: 10.0)
                : const EdgeInsets.only(top: 30.0),
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => DetailArticleAdmin())),
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.grossiste-en-ligne.com/27121-large_default/magnifique-blouse-camel-col-dechire-a-la-mode-vetement-femme.jpg'),
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
                            Text('Montre Cartier',
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
                                    '\$ 680 ',
                                    style: TextStyle(color: Colors.white),
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
                                        style: TextStyle(color: Colors.white),
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
      ),
    );
  }
}
