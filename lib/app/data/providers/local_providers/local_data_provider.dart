import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:subastalo/app/data/models/subastas.dart';

class LocalDataProvider {
  Future<SubastasModel?> getSubastas() async {
    String response = await rootBundle.loadString('assets/jsons/subastas.json');
    return SubastasModel.fromJson(jsonDecode(response));
  }
}
