import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   height: 40,
                   width: 200,
                   color: Colors.black,
                   child: Center(
                     child: Text("DECOUVRIR LE CATALOGUE", 
                     style: TextStyle(
                       color: Colors.white
                     ),
                     ),
                   ),
                 ),

                 Container(
                   height: 60,
                   width: 300,
                   child: Center(child: IconButton(icon: Icon(Icons.security, color: Colors.orange, size: 50,), onPressed:(){})),
                 ),
                     Container(
                   height: 30,
                   width: 300,
                   child: Center(
                     child: Text("Garanties Videdressing", 
                     style: TextStyle(
                       fontWeight: FontWeight.bold
                     ),
                     ),
                   ),
                 ),
                         Container(
                   height: 30,
                   width: 300,
                   child: Center(
                     child: Text("Achetez & vendez en toute tranquillité", 
                     style: TextStyle(
                     ),
                     ),
                   ),
                 ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Expanded(
                       child: Card(
                         elevation: 7,
                         child: Container(
                           height: 200,
                           width: 150,
                           child: Column(
                             children: [
                               Container(
                                 width: 150,
                                height: 60,
                                 child:  Icon(Icons.warning, color: Colors.blue, size: 60,),
                               ),
                                Container(
                                 width: 150,
                                height: 15,
                                 child:  Center(child: Text("Garantie",
                                  style: TextStyle(
                                   color: Colors.blue.shade300
                                 ),
                                 )),
                               ),
                                 Container(
                                 width: 150,
                                height: 30,
                                 child:  Center(child: Text("Authenticité", 
                                 style: TextStyle(
                                   color: Colors.blue.shade300
                                 ),
                                 )),
                               ),
                                  Container(
                                 width: 150,
                                height: 15,
                                 child:  Center(child: Text("Achetez vos articles ", 
                                 style: TextStyle(
                                 ),
                                 )),
                               ),
                                    Container(
                                 width: 150,
                                height: 15,
                                 child:  Center(child: Text(" haut-de-gamme et de luxe en toute securité ", 
                                 style: TextStyle(
                                 ),
                                 )),
                               ),

                                Container(
                                 width: 150,
                                height: 15,
                                 child:  Center(child: Text(" en toute securité ", 
                                 style: TextStyle(
                                 ),
                                 )),
                               ),


                             ],
                           ),
                         ),
                       ),
                     ),
                       Expanded(
                         child: Card(
                           elevation: 7,
                           child: Container(
                           height: 200,
                           width: 150,

                           child: Column(
                             children: [
                               Container(
                                 width: 150,
                                height: 60,
                                 child:  Icon(Icons.favorite, color: Colors.blue, size: 60,),
                               ),
                                Container(
                                 width: 150,
                                height: 15,
                                 child:  Center(child: Text("Satisfait",
                                  style: TextStyle(
                                   color: Colors.blue.shade300
                                 ),
                                 )),
                               ),
                                 Container(
                                 width: 150,
                                height: 30,
                                 child:  Center(child: Text("ou Remboursé", 
                                 style: TextStyle(
                                   color: Colors.blue.shade300
                                 ),
                                 )),
                               ),
                                  Container(
                                 width: 150,
                                height: 15,
                                 child:  Center(child: Text("Parce qu'apres tout ", 
                                 style: TextStyle(
                                 ),
                                 )),
                               ),
                                    Container(
                                 width: 150,
                                height: 15,
                                 child:  Center(child: Text(" tout le monde a le droit ", 
                                 style: TextStyle(
                                 ),
                                 )),
                               ),

                                Container(
                                 width: 150,
                                height: 15,
                                 child:  Center(child: Text(" de changer d'avis ", 
                                 style: TextStyle(
                                 ),
                                 )),
                               ),


                             ],
                           ),
                     ),
                         ),
                       ),
                   ],
                 ),
               ),
               
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Expanded(
                       child: Card(
                         elevation: 7,
                         child: Expanded(
                           child: Container(
                             height: 200,
                             width: 150,
                             child: Column(
                               children: [
                                 Container(
                                   width: 150,
                                  height: 60,
                                   child:  Icon(Icons.warning, color: Colors.blue, size: 60,),
                                 ),
                                  Container(
                                   width: 150,
                                  height: 15,
                                   child:  Center(child: Text("Garantie",
                                    style: TextStyle(
                                     color: Colors.blue.shade300
                                   ),
                                   )),
                                 ),
                                   Container(
                                   width: 150,
                                  height: 30,
                                   child:  Center(child: Text("Authenticité", 
                                   style: TextStyle(
                                     color: Colors.blue.shade300
                                   ),
                                   )),
                                 ),
                                    Container(
                                   width: 150,
                                  height: 15,
                                   child:  Center(child: Text("Achetez vos articles ", 
                                   style: TextStyle(
                                   ),
                                   )),
                                 ),
                                      Container(
                                   width: 150,
                                  height: 15,
                                   child:  Center(child: Text(" haut-de-gamme et de luxe en toute securité ", 
                                   style: TextStyle(
                                   ),
                                   )),
                                 ),

                                  Container(
                                   width: 150,
                                  height: 15,
                                   child:  Center(child: Text(" en toute securité ", 
                                   style: TextStyle(
                                   ),
                                   )),
                                 ),


                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                       Expanded(
                         child: Card(
                           elevation: 7,
                           child: Expanded(
                             child: Container(
                             height: 200,
                             width: 150,
                             child: Column(
                               children: [
                                 Container(
                                   width: 150,
                                  height: 60,
                                   child:  Icon(Icons.thumb_up, color: Colors.blue, size: 60,),
                                 ),
                                  Container(
                                   width: 150,
                                  height: 15,
                                   child:  Center(child: Text("Satisfait",
                                    style: TextStyle(
                                     color: Colors.blue.shade300
                                   ),
                                   )),
                                 ),
                                   Container(
                                   width: 150,
                                  height: 30,
                                   child:  Center(child: Text("ou Remboursé", 
                                   style: TextStyle(
                                     color: Colors.blue.shade300
                                   ),
                                   )),
                                 ),
                                    Container(
                                   width: 150,
                                  height: 15,
                                   child:  Center(child: Text("Parce qu'apres tout ", 
                                   style: TextStyle(
                                   ),
                                   )),
                                 ),
                                      Container(
                                   width: 150,
                                  height: 15,
                                   child:  Center(child: Text(" tout le monde a le droit ", 
                                   style: TextStyle(
                                   ),
                                   )),
                                 ),
                                  Container(
                                   width: 150,
                                  height: 15,

                                   child:  Center(child: Text(" de changer d'avis ", 
                                   style: TextStyle(
                                   ),
                                   )),
                                 ),

                               ],
                             ),
                     ),
                           ),
                         ),
                       ),
                   ],
                 ),
               ),
              Card(
                child: Expanded(
                  child: Container(
                    height: 50,
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Container(child: IconButton(icon: Icon(Icons.call), onPressed: (){}),),
                      Container(child: Text("Besoin d'assistance"))
                    ],) ,
                  ),
                ),
              ),
                 Container(
                  width: 320,
                  height: 50,
                   child: Center(child: Text("NaNShop",
                   style: TextStyle(
                     fontSize: 10
                   ),
                   ))
                ),
                   Container(
                  width: 320,
                  height: 20,
                   child: Center(child: Text("Mentions legales",
                   style: TextStyle(
                     fontSize: 10
                   ),
                   ))
                 
                ),
                SizedBox(height: 100,),
               

               ],
             ),
          ),
    );
  }
}