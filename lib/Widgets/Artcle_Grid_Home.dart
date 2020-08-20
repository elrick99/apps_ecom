import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Widgets/Article_Item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleGridHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerProducts = Provider.of<Products>(context);
    final dataProduct = providerProducts.items;
    return GridView.count(
      key: key,
      physics: ClampingScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 2 / 3,
      children: dataProduct.map((product) {
        return ChangeNotifierProvider.value(
          value: dataProduct[product.id],
          child: InkWell(
            onTap: () =>
                Navigator.pushNamed(context, '/detail', arguments: product.id),
            child: ArticleItem(),
          ),
        );
      }).toList(),
    );
  }
}
