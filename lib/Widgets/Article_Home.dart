import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Screens/Details_Screen.dart';
import 'package:apps_ecom/Widgets/Artcle_Grid_Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleScreen extends StatelessWidget {
  final Function dataprod;

  const ArticleScreen({Key key, this.dataprod}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('/////////RELOAD/////////');
    // dataprod.call();
    print(dataprod);
    final providerProducts = Provider.of<Products>(context);
    final dataProduct = providerProducts.items;
    // final date = dataprod.call();
    // print(date);
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
              ArticleGridHome()
            ],
          ),
        ),
      ),
    );
  }
}
