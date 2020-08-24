import 'package:flutter/material.dart';

class ReglageScreen extends StatefulWidget {
  @override
  _ReglageScreenState createState() => _ReglageScreenState();
}

class _ReglageScreenState extends State<ReglageScreen> {
  bool _switchVal=true;
  bool _switch1Val=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGLAGES", style: TextStyle(color:Colors.black),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
         Container(
           width: MediaQuery.of(context).size.width,
           height: 40,
           color: Colors.grey,
           child: Center(child: Text("PROMOTION")),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 child: Text("MARKETING"),
                 
               ),
               Container(
                 child: Switch( onChanged: (bool value){
                   setState(()=>this._switch1Val=value);
                 },
                   value:this._switch1Val,
                   activeColor: Colors.green,
                   )
                   ),
 
             ],
           ),
         ),
          Container(
           width: MediaQuery.of(context).size.width,
           height: 40,
           color: Colors.grey,
           child: Center(child: Text("ACHATS")),
         ),
            Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 child: Text("COMMANDES"),
                 
               ),
               Container(
                 child: Switch( onChanged: (bool value){
                   setState(()=>this._switchVal=value);
                 },
                   value:this._switchVal,
                 )
                   ),
 
             ],
           ),
         ),
                Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 child: Text("ALERTES BAISSE DE PRIX"),
                 
               ),
               Container(
                 child: Switch( onChanged: (bool value){
                   setState(()=>this._switchVal=value);
                 },
                   value:this._switchVal,
                 )
                   ),
 
             ],
           ),
         ),
                Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 child: Text("ALESTES NOUVEAUX ARTICLES"),
                 
               ),
               Container(
                 child: Switch( onChanged: (bool value){
                   setState(()=>this._switchVal=value);
                 },
                   value:this._switchVal,
                 )
                   ),
 
             ],
           ),
         ),
           Container(
           width: MediaQuery.of(context).size.width,
           height: 40,
           color: Colors.grey,
           child: Center(child: Text("VENTES")),
         ),
                Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 child: Text("ANNONCES"),
                 
               ),
               Container(
                 child: Switch( onChanged: (bool value){
                   setState(()=>this._switchVal=value);
                 },
                   value:this._switchVal,
                 )
                   ),
 
             ],
           ),
         ),       Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 child: Text("VENTES"),
                 
               ),
               Container(
                 child: Switch( onChanged: (bool value){
                   setState(()=>this._switchVal=value);
                 },
                   value:this._switchVal,
                 )
                   ),
 
             ],
           ),
         ),
           Container(
           height: 40,
           color: Colors.green,
           child: Center(child: Text("Valider",
           style: TextStyle(
             color: Colors.white
           ),
           )),
         ),

        ],
   
      ),
    );

  }
}