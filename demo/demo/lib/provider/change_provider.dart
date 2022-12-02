import 'package:demo/models/partido.dart';
import 'package:flutter/material.dart';

class ChangeProvider extends ChangeNotifier {
  bool dato = false;
  bool dato1 = false;

  bool get isCambio => dato;

  Partido? hoy = null;

  void cambiar(bool value) {
    dato = value;
    print(value);
    notifyListeners();
  }

  void btnCambiar() {
    (dato1 == false) ? dato1 = true : dato1 = false;
    notifyListeners();
  }

  void cambiarPartido(Partido partido) {
    hoy = partido;
    notifyListeners();
  }
}
