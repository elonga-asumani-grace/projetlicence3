import 'package:flutter/material.dart';

class hommepage extends StatelessWidget {
  //gnorer le constructeur pardefayl
  final titre;
  hommepage(this.titre);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.titre,
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'Bienvenu à Flutter',
            style: TextStyle(
                fontSize: 20,
                height: 2,
                color: Colors.redAccent,
                letterSpacing: 5,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double,
                decorationColor: Colors.brown,
                decorationThickness: 1.5,
                fontStyle: FontStyle.italic),
          )
        ],
      )),
    );
  }
}
