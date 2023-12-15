import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Projet Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Elonga FluuterApp'),
            ),
            body: const Center(
              child: Text("Bienvenu sur cette application"),
            )));
  }
}
