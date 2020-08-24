import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFFee7b77)),
        title: Text(
          'Notification',
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
                Icons.check,
                size: 80,
                color: Color(0xFFee7b77),
              ),
              Text('Vous n\'avez pas encore de notifications')
            ],
          ),
        ),
      ),
    );
  }
}
