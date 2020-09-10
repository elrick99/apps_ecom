import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Providers/Services/SousCategories.dart';
import 'package:apps_ecom/Screens/Details_Screen.dart';
import 'package:apps_ecom/Widgets/Artcle_Grid_Home.dart';
import 'package:apps_ecom/Widgets/Article_Item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListArticle extends StatelessWidget {
  final int id;

  const ListArticle({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final loadedProduct =
        Provider.of<SousCategories>(context, listen: false).findById(this.id);
    final products = Provider.of<Products>(context).items;
    // print('///////////PRODUCTS///////////');
    // print(products);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFFee7b77)),
          title: Text('Vos produits', style: TextStyle(color: Colors.black)),
        ),
        // body: Column(
        //   children: [
        //     ...loadedProduct.products.map((e) {
        //       return Text(e.toString());
        //     })
        //   ],
        // ),
        body: loadedProduct.products.isEmpty
            ? Text('Aucun Produits')
            : GridView.count(
                key: key,
                physics: ClampingScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 2 / 3,
                children: loadedProduct.products.map((product) {
                  // i++;
                  // int a = i - 1;
                  return ChangeNotifierProvider.value(
                    value: products[product.id],
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailsScreen(id: product.id))),
                      child: ArticleItem(),
                    ),
                  );
                }).toList(),
              ));
  }
}
