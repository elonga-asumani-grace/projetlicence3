import 'package:flutter/material.dart';
import 'package:avancelevel/monApp.dart';

void main() => runApp(compilApp());

class compilApp extends StatelessWidget {
  const compilApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return monApp(titre: "Gestion etudiant");
  }
}
