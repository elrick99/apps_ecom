import 'package:apps_ecom/Widgets/Password.dart';
import 'package:flutter/material.dart';

enum TypeOptions { Particulier, Createur, Bloggeur, VenderPro }

class CreerMonCompte extends StatefulWidget {
  const CreerMonCompte({Key key}) : super(key: key);
  @override
  _CreerMonCompteState createState() => _CreerMonCompteState();
}

class _CreerMonCompteState extends State<CreerMonCompte> {
  bool genreF = true;
  bool genreM = false;
  // static const menuItems = <String>[
  //   'PARTICULIER',
  //   'BLOGGEUR',
  //   'CREATEUR',
  //   'VENDREUR PROFESSIONNEL'
  // ];

  // static const paysItems = <String>[
  //   'COTE D\'IVOIRE',
  //   'MALI',
  //   'BURKINA FASO',
  //   'GHANA',
  //   'TOGO',
  //   'NIGERIA',
  //   'NIGER',
  //   'GUINEE'
  // ];
  // final List<DropdownMenuItem<String>> _dropDownpaysItems = paysItems
  //     .map((String value) => DropdownMenuItem<String>(
  //           value: value,
  //           child: Text(value),
  //         ))
  //     .toList();
  // final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
  //     .map((String values) => DropdownMenuItem<String>(
  //           value: values,
  //           child: Text(values),
  //         ))
  //     .toList();
  // String _btnSelectedVal = 'PARTICULIER';
  // String _btnSelectedVal1 = 'COTE D\'IVOIRE';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "CREER MON COMPTE",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.4,
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
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
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
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
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
                              'Adresse E-mail ',
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
                              'Mot de passe ',
                              style: TextStyle(fontSize: 18),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 12,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              child: PasswordField(
                               // fieldKey: _passwordFieldKey,
                               // helperText: "Au moins 8 caractere",
                               // labelText: "Mot de passe",
                                // onFieldSubmitted: (String value){
                                //   setState(() {
                                //    // this._password=value;
                                //   });
                                // },
                                
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
                // height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          // decoration: BoxDecoration(color: Colors.red),
                          child: Column(
                            children: [
                              Text(
                                  'Votre Numero de Téléphone ne sera pas aficché publiquement\n Il sera communiqué à un tiers uniquement en cas de remise en main propre de l\'article')
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
                              'Téléphone',
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                            'Le vendeur, s\'il se presente comme un consommateur ou un non-professionnel, alors qu\'il agit à titre professionnel, en court des sanctions'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            splashColor: Colors.white24,
                            child: Center(
                              child: Text(
                                'Valider',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
