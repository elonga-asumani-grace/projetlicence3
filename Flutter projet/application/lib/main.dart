import 'package:flutter/material.dart';
import 'package:application/pagehomme.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ElongaSoft",
      home: hommepage("Grace"),
    );
  }
}
