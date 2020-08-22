import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' as english_words;
import 'package:provider/provider.dart';

// Adapted from search demo in offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/search_demo.dart
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Products>(context);
    final dataProduc = provider.items;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Search App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch(dataProduc));
              })
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<Product> listWProds;

  DataSearch(this.listWProds);

  @override
  List<Widget> buildActions(BuildContext context) {
    //Actions for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? listWProds
        : listWProds.where((p) => p.title.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        trailing: Icon(Icons.remove_red_eye),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].title.substring(0, query.length),
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].title.substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
