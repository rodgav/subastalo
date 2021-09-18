import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:subastalo/app/data/models/subastas.dart';

class LocalDataProvider {
  Future<SubastasModel?> getSubastas() async {
    String response = await rootBundle.loadString('assets/jsons/subastas.json');
    return SubastasModel.fromJson(jsonDecode(response));
  }

  Future<Subasta?> getSubastaId(String subastaId) async {
    final subasta = await getSubastas();
    final subastas = subasta?.subastas;
    if (subastas != null) {
      final subasta = subastas.firstWhere((element) => element.id == subastaId);
      return subasta;
    } else {
      return null;
    }
  }
}
