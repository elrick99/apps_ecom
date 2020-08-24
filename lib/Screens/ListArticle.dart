import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Providers/Services/SousCategories.dart';
import 'package:apps_ecom/Widgets/Artcle_Grid_Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListArticle extends StatelessWidget {
  final int id;

  const ListArticle({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final loadedProduct =
        Provider.of<SousCategories>(context, listen: false).findById(this.id);
    print(loadedProduct.title);
    return Scaffold(
      body: ArticleGridHome(),
    );
  }
}
