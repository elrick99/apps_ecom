import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Screens/LoginSignupPage.dart';
import 'package:apps_ecom/Screens/Notifications_Screen.dart';
import 'package:apps_ecom/Screens/Profil_Screen.dart';
import 'package:apps_ecom/Screens/Search_Screen.dart';
import 'package:apps_ecom/Screens/baseAuth.dart';
import 'package:apps_ecom/Screens/routPge.dart';
import 'package:apps_ecom/Widgets/Article_Home.dart';
import 'package:apps_ecom/Screens/Search_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Future<Null> _refresh() {
//   return getUser().then((_user) {
//     setState(() => user = _user);
//   });
// }
class HeaderHome extends StatefulWidget {
  @override
  _HeaderHomeState createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  // final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  //     new GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    // var dataProduc;
    // Future<List<Product>> getUser() async {
    //   final provider = Provider.of<Products>(context, listen: false);
    //   dataProduc = provider.items;
    //   setState(() {
    //     return dataProduc;
    //   });
    //   return dataProduc;
    // }

    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(
                  Icons.person_pin,
                ),
                onPressed: () {
                  Navigator.push(context,
<<<<<<< Updated upstream
                      MaterialPageRoute(builder: (_) => LoginSignupPage()));
=======
                      MaterialPageRoute(builder: (_) =>RootPage(auth:  Auth())));
>>>>>>> Stashed changes
                }),
            title: Center(
              child: Text(
                "NaN Shop",
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey,
            actions: <Widget>[
              CircleAvatar(
                  minRadius: 10,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => NotificationsScreen()));
                      }))
            ],
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SearchBar()));
                },
                child: Card(
                  child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Essayez<La creation de nath>",
                          style: TextStyle(fontSize: 13),
                        ),
                      )),
                ),
              ),
              background: Image(
                image: AssetImage("assets/images/style.jpg"),
                fit: BoxFit.cover,
              ),
              // background: Image.network(
              //     'https://images.fr.shopping.rakuten.com/photo/basket-nike-air-max-97-921826-013-1230178019_ML.jpg'),
            ),
          ),
        ];
      },
      // body: RefreshIndicator(
      //     key: _refreshIndicatorKey,
      //     onRefresh: getUser,
      //     child: ArticleScreen(
      //       dataprod: getUser,
      //     ))
      body: ArticleScreen(),
    ));
  }
}
