// declaration de la classe qui etend la classe statelessWidget
import 'package:flutter/material.dart';

class hommepage extends StatelessWidget {
  //Ignorer le constructeur de clé
  final String titre;
  hommepage(this.titre);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.titre),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  print('Bienvenue');
                },
                child: Text("Affichier une boite"))
          ],
        )));
  }
}
