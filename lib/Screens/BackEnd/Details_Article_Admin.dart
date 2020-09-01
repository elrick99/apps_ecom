import 'package:flutter/material.dart';

class DetailArticleAdmin extends StatefulWidget {
  @override
  _DetailArticleAdminState createState() => _DetailArticleAdminState();
}

class _DetailArticleAdminState extends State<DetailArticleAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text('Details',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
    );
  }
}
