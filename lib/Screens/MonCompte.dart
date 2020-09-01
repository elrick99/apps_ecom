import 'package:flutter/material.dart';

class MonCompte extends StatefulWidget {
  @override
  _MonCompteState createState() => _MonCompteState();
}

class _MonCompteState extends State<MonCompte> {
  bool genreF = true;
  bool genreM = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Container(
            height: 40,
            width: 60,
            child: MaterialButton(
              onPressed: () {},
              child: Text('OK', style: TextStyle(color: Color(0xFFee7b77))),
            ),
          )
        ],
        iconTheme: IconThemeData(color: Color(0xFFee7b77)),
        title: Text('Editer Mon Compte',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Icon(
                        Icons.person,
                        size: 90,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300], width: 2),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      child: Text(
                        'Changer Ma Photo',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // height: MediaQuery.of(context).size.height / 1.8,è
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width,
                        // decoration: BoxDecoration(color: Colors.red),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Genre',
                              style: TextStyle(fontSize: 18),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 10,
                              // decoration: BoxDecoration(color: Colors.red),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          genreF = true;
                                          genreM = false;
                                        });
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                            color: (genreF == false)
                                                ? Colors.white
                                                : Colors.black,
                                            border: Border.all(
                                                color: (genreF == false)
                                                    ? Colors.black
                                                    : Colors.white)),
                                        child: Center(
                                          child: Text('FEMME',
                                              style: TextStyle(
                                                  color: (genreF == false)
                                                      ? Colors.black
                                                      : Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          genreM = true;
                                          genreF = false;
                                        });
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                            color: (genreM == true)
                                                ? Colors.black
                                                : Colors.white,
                                            border: Border.all(
                                                color: (genreM == true)
                                                    ? Colors.white
                                                    : Colors.black)),
                                        child: Center(
                                          child: Text(
                                            'HOMME',
                                            style: TextStyle(
                                                color: (genreM == true)
                                                    ? Colors.white
                                                    : Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Prénom',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
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
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Nom',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
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
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
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
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Telephone',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
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
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Date de Naissance',
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.vpn_key),
                  Text(
                    'Changer le Mot de Passe',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
