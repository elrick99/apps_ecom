import 'package:flutter/material.dart';

class DiscussionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFFee7b77)),
        title: Text(
          'Mes Discussions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mode_comment,
                size: 80,
                color: Color(0xFFee7b77),
              ),
              Text('Aucune Discussions')
            ],
          ),
        ),
      ),
    );
  }
}
