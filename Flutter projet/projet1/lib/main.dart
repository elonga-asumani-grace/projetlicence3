import 'dart:isolate';

import 'package:flutter/material.dart';

void main() => runApp(monApplication());

class monApplication extends StatelessWidget {
  const monApplication({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inscription',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Etudiant",
            style: TextStyle(fontStyle: FontStyle.normal),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    print("Bonjour Etudiant");
                  },
                  child: Text('Appuyer ici')),
              Text("Bonjour ELonga")
            ],
          ),
        ),
      ),
    );
  }
}
