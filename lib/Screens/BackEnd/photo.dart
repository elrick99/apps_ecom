

// import 'package:flutter/material.dart';



// class BoutiqueScreen extends StatefulWidget {
//   const BoutiqueScreen({Key key}): super(key: key);
//   @override
//   _BoutiqueScreenState createState() => _BoutiqueScreenState();
// }

// class _BoutiqueScreenState extends State<BoutiqueScreen> {
//   static const statut=<String>[
//   "Particulier"
//   "Createur"
//   "Bloggeur"
//   "Vender professionnel"
//   ];
//   // final List<DropdownMenuItem<String>>_dropDownMenuItems=statut.map(
//   //   (String value)=>DropdownMenuItem<String>(
//   //   value: value,
//   //   child: Text(value),
//   //   ),
//   // ).toList();
// //   final List<PopupMenuItem<String>>_popUpMenuItems=statut.map((String value) => PopupMenuItem<String>(
// // value: value,
// // child: Text(value),
// //   )).toList();
//   String _btn1SelectedVal="Particulier";
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//   appBar: AppBar(
//     title: Text("CREER MA BOUTIQUE",
//     style: TextStyle(
//       color: Colors.black
//     ),
//     ),
//   ),

//   body: SingleChildScrollView(
//     child: Container(
//       child: Column(
//     children: [
//    Stack(
//      overflow: Overflow.visible,
//      children: [
//           Container(
//          height: 200,
//          width: double.infinity,
//          color: Colors.orange.shade100,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.phone_iphone, color: Colors.black,size: 40,),
//              Container(
//               height: 50,
//               width: 250,
//               child: Text("Avant de mettre en vente vos articles, creez votre boutique en quelque seconds!"),
//             ),                
       
//           ],
//         ),
//       ),
//        Positioned( 
//          left: 150,
//          bottom: -30,
//             child:Container(
//               height: 70,
//               width: 70,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color: Colors.green
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   IconButton(icon: Icon(Icons.add), onPressed:() async=> await _pickImageFromCamera(),
//                   tooltip: "Pick",
//                   ),
//                   Text("Ajouter"),
//                    Text("Uun photo")
//                 ],
//               ),
//             )
//           ),
//      ],
//    ),

//    Padding(
//      padding: const EdgeInsets.all(30),
//      child: Column(
//        children: [
//        Card(
//          elevation: 7,
//          child: Container(
//             height: 40,
//           width: MediaQuery.of(context).size.width/1,
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: [
//                Container(
//                  child: Text("particulier"),
//                ),
//                DropdownButton<String>(
//                  items: [],
//                  value: _btn1SelectedVal,
//                  onChanged: (String newValue){
//                    setState(() {  
//                      _btn1SelectedVal= newValue;
//                    });
//                  },
//                 // items:this._dropDownMenuItems,
//                ),
//              ],
//            ),
//          ),
//        ),
//     SizedBox(height: 10,),
//        Card(
//          elevation: 7,
//          child: TextFormField(
//          textCapitalization: TextCapitalization.words,
//          decoration: InputDecoration(
//          border: OutlineInputBorder(),
//          filled: true,
//          hintText: 'Description de vos activites',
//          labelText: 'Description(facultatif)'
//          ),
//          maxLength: 250,
//          ),
//        ),
//         SizedBox(height: 10,),
//        Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//              Container(child: Text("Addre de votre boutique",
//              style: TextStyle(
//                fontWeight: FontWeight.bold
//              ),
//              )),
//                Container(child: Text("Elle sera utiser en cas de remise en main propre ou de retour du colis"))
//           ],
//        ),
//        SizedBox(height: 10,),
//        Container(
//          width: 300,
//          height: 50,
//          child: Row(
//            children: [
//              Container(
//                 width: 150,
//                 height: 50,
//                 color: Colors.grey,
//                child: Center(child: Text("Mme")),
//              ),
//                Container(
//                  color: Colors.grey.shade300,
//                   width: 150,
//                child: Center(child: Text("M.")),
//              )

//            ],
//          ),
//        ),
//            SizedBox(height: 24,),
//            Card(
//              elevation: 7,
//              child: TextFormField(
//               textCapitalization: TextCapitalization.words,
//               decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//                 filled: true,
//                 hintText: 'votre nom',
//                 labelText: 'nom'
//               ),
//              ),
//            ),
//             SizedBox(height: 24,),
//            Card(
//              elevation: 7,
//              child: TextFormField(
//               textCapitalization: TextCapitalization.words,
//               decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//                 filled: true,
//                 hintText: 'votre prenom',
//                 labelText: 'prenom'
//               ),
//              ),
//            ),
//             SizedBox(height: 24,),
//              Card(
//                elevation: 7,
//                child: TextFormField(
//             textCapitalization: TextCapitalization.words,
//             decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//                 filled: true,
//                 hintText: 'Code postal',
//                 labelText: 'Code postal'
//             ),
//             keyboardType: TextInputType.phone,
//            ),
//              ) ,
           
//               SizedBox(height: 24,),
//            Card(
//            elevation: 7,
//              child: TextFormField(
//               textCapitalization: TextCapitalization.words,
//               decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//                 filled: true,
//                 hintText: 'votre ville',
//                 labelText: 'ville'
//               ),
//              ),
//            ),
//            SizedBox(height: 24,),
//               Card(
//                 elevation: 7,
//                 child: TextFormField(
//             textCapitalization: TextCapitalization.words,
//             decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//                 filled: true,
//                 hintText: 'votre pays',
//                 labelText: 'pays'
//             ),
//            ),
//               ),
//            SizedBox(height: 24,),
//              Card(
//                elevation: 7,
//                child: TextFormField(
//             textCapitalization: TextCapitalization.words,
//             decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//                 filled: true,
//                 hintText: 'Numero de telephone',
//                 labelText: 'Numero de telephone'
//             ),
//             keyboardType: TextInputType.phone,
//            ),
//              ),
//              SizedBox(height: 20,),
//              Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: [
//                   Container(
//                      child: IconButton(icon: Icon(Icons.security), onPressed: (){}),
//                   ),
//                   Container(
//                     height: 70,
//                     width: 200,
                    
//                     child: Text("voila voila voila vvoila voila voila voila voila voila voila voila voila voila voila voila voila v voila vv"),
//                   ),
//                ],
//              ),
//                  Container(
//                     height: 50,
                    
//                     child: Text("voila voila voila vvoila voila voila voila voila voila voila voila voila voila voila voila voila v voila vv"),
//                   ),
//              Container(
//      height: 50,
//      child: Center(child: Text("CREES Ma BOUTIQUE",
//      style: TextStyle(
//        color: Colors.white
//      ),
//      )),
//      color: Colors.black,
//    ) 
//        ],
//      ),
//    ),

//     ],
//       ),
//     ),
//   ),
      
//     );
//   }
// }
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma boutique', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child:Expanded(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child:  Center(child: InkWell(
                    onTap: getImage ,
                    child: _image==null? Icon(
                        Icons.add_a_photo):Image.file(_image, fit: BoxFit.cover))),
                ),
                Container(
      child: Column(
    children: [
  
   Padding(
     padding: const EdgeInsets.all(30),
     child: Column(
       children: [
      
       Card(
             elevation: 7,
             child: TextFormField(
             textCapitalization: TextCapitalization.words,
             decoration: InputDecoration(
             border: OutlineInputBorder(),
             filled: true,
             hintText: 'Description de vos activites',
             labelText: 'Description(facultatif)'
             ),
             maxLength: 250,
             ),
       ),
            SizedBox(height: 10,),
       Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(child: Text("Addre de votre boutique",
                 style: TextStyle(
                 fontWeight: FontWeight.bold
                 ),
                 )),
                 Container(child: Text("Elle sera utiser en cas de remise en main propre ou de retour du colis"))
              ],
       ),
       SizedBox(height: 10,),
       Container(
             width: 300,
             height: 50,
             child: Row(
               children: [
                 Container(
                  width: 150,
                  height: 50,
                  color: Colors.grey,
                 child: Center(child: Text("Mme")),
                 ),
                 Container(
                color: Colors.grey.shade300,
                 width: 150,
                 child: Center(child: Text("M.")),
                 )

               ],
             ),
       ),
               SizedBox(height: 24,),
               Card(
                 elevation: 7,
                 child: TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  hintText: 'votre nom',
                  labelText: 'nom'
                ),
                 ),
               ),
                SizedBox(height: 24,),
               Card(
                 elevation: 7,
                 child: TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  hintText: 'votre prenom',
                  labelText: 'prenom'
                ),
                 ),
               ),
                SizedBox(height: 24,),
                 Card(
                 elevation: 7,
                 child: TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  hintText: 'Code postal',
                  labelText: 'Code postal'
                ),
                keyboardType: TextInputType.phone,
               ),
                 ) ,
               
                SizedBox(height: 24,),
               Card(
               elevation: 7,
                 child: TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  hintText: 'votre ville',
                  labelText: 'ville'
                ),
                 ),
               ),
               SizedBox(height: 24,),
                Card(
                  elevation: 7,
                  child: TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  hintText: 'votre pays',
                  labelText: 'pays'
                ),
               ),
                ),
               SizedBox(height: 24,),
                 Card(
                 elevation: 7,
                 child: TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  hintText: 'Numero de telephone',
                  labelText: 'Numero de telephone'
                ),
                keyboardType: TextInputType.phone,
               ),
                 ),
                 SizedBox(height: 20,),
                 Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Container(
                    child: IconButton(icon: Icon(Icons.security), onPressed: (){}),
                 ),
                 Container(
                   height: 70,
                   width: 200,
                   
                   child: Text("voila voila voila vvoila voila voila voila voila voila voila voila voila voila voila voila voila v voila vv"),
                 ),
                 ],
                 ),
                Container(
                   height: 50,
                   
                   child: Text("voila voila voila vvoila voila voila voila voila voila voila voila voila voila voila voila voila v voila vv"),
                 ),
                 Container(
     height: 50,
     child: Center(child: Text("CREES Ma BOUTIQUE",
     style: TextStyle(
       color: Colors.white
     ),
     )),
     color: Colors.black,
   ) 
       ],
     ),
   ),

    ],
      ),
    ),

              ],
            ),
          ),
        )
      ),
     
    );
  }
}