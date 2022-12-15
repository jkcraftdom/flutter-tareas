import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/lugar.dart';

class LugarService extends ChangeNotifier {
  final String baseUrl = '';
  final List<Lugar> lugares = [];
  late Lugar seleccionarLugar;
  late bool isSaving;

  Future crearOActualizar(Lugar lugar) async {
    isSaving = true;
    notifyListeners();

    if (lugar.id == null) {
      await crearLugar(lugar);
    } else {
      await actualizarLugar(lugar);
    }
  }

  Future actualizarLugar(Lugar lugar) async {
    final url = Uri.parse('$baseUrl/lugar/${lugar.id}.json');

    final response = await http.put(url, body: lugar.toJson());

    final decodeData = response.body;

    final index = lugares.indexWhere((element) => element.id == lugar.id);

    lugares[index] = lugar;

    return lugar.id;
  }

  Future<String> crearLugar(Lugar lugar) async {
    final url = Uri.parse('$baseUrl/');

    return "id";
  }
}
