import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Categories.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Providers/Services/SousCategories.dart';
import 'package:apps_ecom/Screens/Details_Screen.dart';
import 'package:apps_ecom/Screens/ListArticle.dart';
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
        backgroundColor: Colors.grey[200],
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
                    scrollDirection: Axis.vertical,
                    itemCount: e.sousCats.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>ListArticle(id: e.sousCats[index].id,)));
                          
                        },
                                              child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height / 6,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    // color: Colors.red,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        e.sousCats[index].title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  )),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0,
                                        right: 30.0,
                                        top: 8.0,
                                        bottom: 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  e.sousCats[index].image),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                  ))
                                ],
                              )),
                        ),
                      );
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
