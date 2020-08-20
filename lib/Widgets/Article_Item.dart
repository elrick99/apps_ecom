import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return ClipRRect(
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
                        child: Consumer<Product>(
                          builder: (ctx, product, _) => IconButton(
                              icon: Icon(product.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border),
                              onPressed: () {
                                product.toggleFavoriteStatus();
                              },
                              color: Theme.of(context).accentColor),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    );
  }
}
