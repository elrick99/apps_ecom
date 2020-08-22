

import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
                return <Widget>[
            SliverAppBar(
              leading: IconButton(icon: Icon(Icons.person_pin,), onPressed: (){}),
              title: Text("NaN Shop", ),
              centerTitle: true,
              backgroundColor: Colors.grey,
              actions: <Widget>[CircleAvatar(
                minRadius: 10,
                 backgroundColor: Colors.transparent,
                child: IconButton(icon: Icon(Icons.notifications, color: Colors.orange,), onPressed: (){}))],
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Essayez<La creation de nath>",
                          labelStyle: TextStyle(
                            fontSize: 12
                          ),
                          prefixIcon:Icon(Icons.search, size: 20,)
                          
                        ),
                      )
                      ),
                
                background: 
                    Image(
                  image: AssetImage("images/style.jpg"),
                  fit: BoxFit.cover,
                ),
                 
              ),
            ),
          ];
              }, body: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        // height: 300,
                        // width: 300,
                        // color: Colors.green,
                      )
                    ],
                  ),
                ),
              ))
      
    );
  }
}