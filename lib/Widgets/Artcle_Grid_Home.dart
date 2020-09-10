import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Models/SousCategorie.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Providers/Services/SousCategories.dart';
import 'package:apps_ecom/Screens/Details_Screen.dart';
import 'package:apps_ecom/Widgets/Article_Item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleGridHome extends StatefulWidget {
  @override
  _ArticleGridHomeState createState() => _ArticleGridHomeState();
}

class _ArticleGridHomeState extends State<ArticleGridHome> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    final provider = Provider.of<Products>(context);
    provider.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    int i = 0;
    final providerProducts = Provider.of<Products>(context);
    final dataProduct = providerProducts.items;
    // print('/////////////DATA PRODUCTS////////////////');
    // print(dataProduct.map((e) => print(e.title)));
    return GridView.count(
      // key: key,
      physics: ClampingScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 2 / 3,
      children: dataProduct.map((product) {
        // i--;
        i++;
        // print(i - 1);
        int a = i - 1;
        // print(a);
        return ChangeNotifierProvider.value(
          value: dataProduct[a],
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => DetailsScreen(id: product.id))),
            child: ArticleItem(),
          ),
        );
      }).toList(),
    );
  }
}
