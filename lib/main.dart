import 'package:flutter/material.dart';
import 'ui/etkin_liste_ornek.dart';
import 'ui/liste_dersleri.dart';


void main(){
  runApp(MaterialApp(
    title: "flutter dersleri",
    theme: ThemeData(
      primarySwatch: Colors.orange
    ),
    home:  Scaffold(
      appBar: AppBar(title:  Text("Liste Dersleri",style: TextStyle(color: Colors.white),),),
      body: EtkinListeOrnek(),
    ),
  ));
}