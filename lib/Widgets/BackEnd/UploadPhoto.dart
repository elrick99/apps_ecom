import 'dart:io';
import 'package:apps_ecom/Providers/Models/Boutique.dart';
import 'package:apps_ecom/Providers/Models/Product.dart';
import 'package:apps_ecom/Providers/Services/Products.dart';
import 'package:apps_ecom/Screens/BackEnd/Ajout_Article.dart';
import 'package:apps_ecom/Widgets/BackEnd/BottomBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class UploadPhoto extends StatefulWidget {
  final int categorieId;
  final int sousCatId;
  final FirebaseUser user;
  final Boutique boutique;

  const UploadPhoto(
      {Key key, this.categorieId, this.sousCatId, this.user, this.boutique})
      : super(key: key);
  @override
  _UploadPhotoState createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  bool loaded = false;
  bool result = false;
  static const stateItems = <String>[
    'Neuf',
    'QuasiNeuf',
  ];

  final List<DropdownMenuItem<String>> _dropDownMenuItems = stateItems
      .map((String values) => DropdownMenuItem<String>(
            value: values,
            child: Text(values),
          ))
      .toList();
  String _btnSelectedVal = 'Neuf';

  File sampleImage;
  String _myDescription;
  String _myTitle;
  String _myMarque;
  String _myState;
  String _myTaille;
  String _myPrice;
  String url;
  final formKey = new GlobalKey<FormState>();

  Future getImage() async {
    var tempImage = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      sampleImage = tempImage;
    });
    sampleImage.lastModifiedSync();
  }

  bool validateSaved() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void uploadPhoto() async {
    if (validateSaved()) {
      final StorageReference postImageRef =
          FirebaseStorage.instance.ref().child("Post Images");
      var timeKey = DateTime.now();
      final StorageUploadTask uploadTask =
          postImageRef.child(timeKey.toString() + ".jpg").putFile(sampleImage);
      var ImageUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
      url = ImageUrl.toString();
      // print("Image Url = " + url);
      print('////////////DEBUT//////////////');
      print(_myDescription);
      print(_myMarque);
      print(_myPrice);
      print(_btnSelectedVal);
      print(_myTaille);
      print(_myTitle);
      print(widget.categorieId);
      print(widget.sousCatId);
      print(url);
      print('////////////FIN//////////////');
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (_) => Photo(
      //               url: url,
      //             )));
      // SaveToDatabase(url);
    }
  }

  // void deletePhoto() async{
  //   final StorageReference postImageRef =
  //         FirebaseStorage.instance.ref().child("Post Images");
  //     var timeKey = DateTime.now();
  //     final Future<void> uploadTask =
  //         postImageRef.child(timeKey.toString() + ".jpg").delete();
  //     print("Image Url = " + url);
  // }

  // void SaveToDatabase(url) {
  //   var dbtimeKey = DateTime.now();
  //   var formatDate = DateFormat('MMM d, yyyy');
  //   var formatTime = DateFormat('EEEE, hh:mm aaa');

  //   String date = formatDate.format(dbtimeKey);
  //   String time = formatTime.format(dbtimeKey);

  //   DatabaseReference databaseReference = FirebaseDatabase.instance.reference();

  //   var data = {
  //     "image": url,
  //     // "description": _myvalue,
  //     "time": time,
  //     "date": date,
  //   };
  //   databaseReference.child('Image').push().set(data);
  // }

  @override
  Widget build(BuildContext context) {
    if (result == true)
      return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Votre Produit a bien été enregistré'),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.check, color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                color: Colors.black,
                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => BottomBarAdmin(
                                boutique: widget.boutique,
                                user: widget.user,
                              )));
                },
              )
            ],
          ),
        ),
      );

    return (loaded == true)
        ? Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
                child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.black),
            )))
        : Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Color(0xFF562ec2)),
                title: Text('enregistrer Photo',
                    style: TextStyle(color: Colors.black))),
            body: Center(
              child: sampleImage == null
                  ? Text('Select une Image')
                  : enableUpload(),
            ),
            floatingActionButton: sampleImage == null
                ? FloatingActionButton(
                    backgroundColor: Colors.black,
                    tooltip: 'Add Image',
                    child: Icon(Icons.add),
                    onPressed: getImage)
                : null,
          );
  }

  Widget enableUpload() {
    final provider = Provider.of<Products>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.file(
                    sampleImage,
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Titre',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
                              validator: (value) {
                                return value.isEmpty ? 'Titre required' : null;
                              },
                              onChanged: (String valueTitle) {
                                setState(() {
                                  _myTitle = valueTitle;
                                });
                              },
                              onSaved: (newValue) {
                                _myTitle = newValue;
                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                border: UnderlineInputBorder(),
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
                              validator: (value) {
                                return value.isEmpty
                                    ? 'Description required'
                                    : null;
                              },
                              onChanged: (String valueDesc) {
                                setState(() {
                                  _myDescription = valueDesc;
                                });
                              },
                              onSaved: (newValue) {
                                _myDescription = newValue;
                              },
                              decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                border: UnderlineInputBorder(),
                              ),
                              maxLines: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Marque',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
                              validator: (value) {
                                return value.isEmpty ? 'Marque required' : null;
                              },
                              onChanged: (String valueMarque) {
                                setState(() {
                                  _myMarque = valueMarque;
                                });
                              },
                              onSaved: (newValue) {
                                _myMarque = newValue;
                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                border: UnderlineInputBorder(),
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Etat',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(),
                            child: DropdownButton<String>(
                                isExpanded: true,
                                value: _btnSelectedVal,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _btnSelectedVal = newValue;
                                    print(_btnSelectedVal);
                                  });
                                },
                                items: this._dropDownMenuItems),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Taille',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
                              validator: (value) {
                                return value.isEmpty ? 'Marque required' : null;
                              },
                              onChanged: (String valueTaille) {
                                setState(() {
                                  _myTaille = valueTaille;
                                });
                              },
                              onSaved: (newValue) {
                                _myTaille = newValue;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                border: UnderlineInputBorder(),
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Prix',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
                              validator: (value) {
                                return value.isEmpty ? 'Marque required' : null;
                              },
                              onChanged: (String valuePrice) {
                                setState(() {
                                  _myPrice = valuePrice;
                                });
                              },
                              onSaved: (newValue) {
                                _myPrice = newValue;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                border: UnderlineInputBorder(),
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  //   child: TextFormField(
                  //     decoration: InputDecoration(
                  //       labelText: 'Description',
                  //     ),
                  //     validator: (value) {
                  //       return value.isEmpty ? 'Description required' : null;
                  //     },
                  //     onSaved: (newValue) {
                  //       _myvalue = newValue;
                  //     },
                  //   ),
                  // ),

                  SizedBox(
                    height: 15.0,
                  ),
                  RaisedButton(
                      child: Text('Valider'),
                      textColor: Colors.white,
                      color: Colors.black,
                      elevation: 10.0,
                      onPressed: () async {
                        if (validateSaved()) {
                          setState(() {
                            loaded = true;
                          });
                          provider
                              .postProducts(
                                  boutique: widget.boutique,
                                  catId: widget.categorieId,
                                  description: _myDescription,
                                  etat: _btnSelectedVal,
                                  marque: _myMarque,
                                  price: double.parse(_myPrice),
                                  sampleImage: sampleImage,
                                  souCatId: widget.sousCatId,
                                  taille: _myTaille,
                                  titre: _myTitle,
                                  userid: widget.user.email)
                              .then((value) {
                            if (value == true) {
                              setState(() {
                                loaded = false;
                                result = true;
                              });
                              // Navigator.pop(context);
                            }
                          });
                          // print('////////////DEBUT//////////////');
                          // print(_myDescription);
                          // print(_myMarque);
                          // print(_myPrice);
                          // print(_btnSelectedVal);
                          // print(_myTaille);
                          // print(_myTitle);
                          // print(widget.categorieId);
                          // print(widget.sousCatId);
                          // print(url);
                          // print('////////////FIN//////////////');
                        }
                      })
                ],
              ),
            )),
      ),
    );
  }
}
