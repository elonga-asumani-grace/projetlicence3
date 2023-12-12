import 'dart:io';

///mes lignes de code code pour la documentation
void main(List<String> arguments) {
  String st1 = 'Elonga';
  String st2 = "Apprend le lengage Dart";
  String st3 = ''' bonjour on commence à programmer
  le langage Dart''';
  //stdout.write(st3.codeUnits);
  print(st2.length);
  print(st3.contains("bonj")); // renvoie
  print(st2.startsWith("lengage"));
  print(st3.toLowerCase());
  print(st3.replaceAll('e', "é"));
  print(st2.compareTo(st3));
}
