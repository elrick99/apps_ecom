import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Categories.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Providers/Services/SousCategories.dart';
import 'package:apps_ecom/Screens/Details_Screen.dart';
import 'package:apps_ecom/Screens/Profil_Screen.dart';
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
    final providerCat = Provider.of<Categories>(context);
    final dataCategories = providerCat.items;
    final providerSousCat = Provider.of<SousCategories>(context);
    final dataSousCat = providerSousCat.items;
    return DefaultTabController(
      length: dataCategories.length,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xFFee7b77)),
          backgroundColor: Colors.white,
          title: Text(
            'Search App',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(
                      context: context, delegate: DataSearch(dataProduc));
                })
          ],
          bottom: PreferredSize(
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.white.withOpacity(0.3),
                  indicatorColor: Color(0xFFee7b77),
                  tabs: [
                    ...dataCategories.map(
                      (e) => Tab(
                        child: Text(
                          e.title,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ]),
              preferredSize: Size.fromHeight(50.0)),
        ),
        body: TabBarView(
          children: [
            ...dataCategories.map((e) => Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: e.sousCats.length,
                    itemBuilder: (_, index) {
                      return Text(e.sousCats[index].title);
                    })))
          ],
        ),
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
        : listWProds.where((p) => p.title.contains(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                        id: suggestionList[index].id,
                      )));
        },
        trailing: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () => MaterialPageRoute(
                builder: (_) => DetailsScreen(id: suggestionList[index].id))),
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
