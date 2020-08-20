import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Screens/Details_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerProducts = Provider.of<Products>(context);
    final dataProduct = providerProducts.items;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    gradient: LinearGradient(
                        colors: [Colors.yellow[700], Colors.redAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        tileMode: TileMode.clamp)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'BIENVENUE SUR BABISHOP !',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text('-50% sur votre première commande *',
                        style: TextStyle(color: Colors.white)),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.white),
                      child: MaterialButton(
                          child: Text('En Profiter'), onPressed: () {}),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 2 / 3,
                children: dataProduct.map((product) {
                  return InkWell(
                    onTap: () => Navigator.pushNamed(context, '/detail',
                        arguments: product.id),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(product.picture),
                                          fit: BoxFit.cover)),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          right: 5,
                                          child: IconButton(
                                              icon: Icon(
                                                Icons.favorite_border,
                                                color: Colors.black,
                                              ),
                                              onPressed: null)),
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: Container(
                              width: MediaQuery.of(context).size.width,
                              // color: Colors.green,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${product.price} \$',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      )),
                                  Text(product.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      )),
                                  Text(product.description,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle())
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
