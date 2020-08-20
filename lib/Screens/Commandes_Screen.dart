import 'package:flutter/material.dart';

class CommandesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: Icon(Icons.person_outline),
            title: Text(
              'Mes Commandes',
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: false,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Color(0xFFee7b77),
                    tabs: [
                      Tab(
                        child: Text(
                          'En Cours',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Historique',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ]),
                preferredSize: Size.fromHeight(50.0)),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.add_alert),
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text('Tab 1'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 2'),
                ),
              ),
            ],
          )),
    );
  }
}
