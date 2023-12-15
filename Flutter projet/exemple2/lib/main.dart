import 'package:flutter/material.dart';
import 'package:exemple2/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Constructeur d'initialisation de clé
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UnikalPUB',
      home: hommepage("Resultat Etudiant"),
    );
  }
}
//Création de la classe monApp qui veut dire mon application
