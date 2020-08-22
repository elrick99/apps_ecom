import 'package:apps_ecom/Screens/Commandes_Screen.dart';
import 'package:apps_ecom/Screens/Discussions_Screen.dart';
import 'package:apps_ecom/Screens/Favoris.dart';
import 'package:apps_ecom/Screens/Notifications_Screen.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      appBar: AppBar(
        title: Text(
          'Mon Compte',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          // color: Colors.amber,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.person,
                        size: 100,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      child: Text('Elrick',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    Text(
                      'Editer Mon Compte',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.mode_comment,
                      color: Colors.black,
                    ),
                    Text(
                      'Mes Discussions',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DiscussionScreen()));
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                    Text(
                      'Notifictions',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => NotificationsScreen()));
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mes Achats',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.beenhere,
                      color: Colors.black,
                    ),
                    Text(
                      'Mes Commandes',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CommandesScreen())),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                    Text(
                      'Mes Favoris',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Favoris())),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mea Boutique',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.card_giftcard,
                      color: Colors.black,
                    ),
                    Text(
                      'Creer Ma Boutique',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Paramètres de Compte',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.photo_filter,
                      color: Colors.black,
                    ),
                    Text(
                      'Mes Préférences',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.black,
                    ),
                    Text(
                      'Mon Porte-Monnaie',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    Text(
                      'Mon Service Clients',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.help_outline,
                      color: Colors.black,
                    ),
                    Text(
                      'FAQ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
