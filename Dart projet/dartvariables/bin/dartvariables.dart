import 'dart:ffi';
import 'dart:typed_data';

import 'package:dartvariables/dartvariables.dart' as dartvariables;

void main(List<String> arguments) {
  Personne Etudiant = Personne("Elonga", 20);
  print(Etudiant._age);
}

class Personne {
  String _nom;
  int _age;
  Personne(this._nom, this._age);
  String get nomEtudiant {
    return this._nom;
  }

  set ageEtudiant(int value) {
    if (value >= 0) {
      _age = value;
    } else {
      print('L\'âge ne peut pas être négatif.');
    }
  }
}
