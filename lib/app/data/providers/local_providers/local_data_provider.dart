import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:subastalo/app/data/models/images_subastas.dart';
import 'package:subastalo/app/data/models/subastas.dart';

class LocalDataProvider {

  Future<SubastasModel> getSubastas() async {
    String response = await rootBundle.loadString('assets/jsons/subastas.json');
    return SubastasModel.fromJson(jsonDecode(response));
  }

  Future<Subasta> getSubastaId(String subastaId) async {
    final subasta = await getSubastas();
    final subastas = subasta.subastas;
    final subst = subastas.firstWhere((element) => element.id == subastaId);
    return subst;
  }

  Future<List<ImagesSubasta>> getImagesSubastas(String subastaId) async {
    String response =
        await rootBundle.loadString('assets/jsons/images_subasta.json');
    final imageSubastaModel =
        ImagesSubastasModel.fromJson(jsonDecode(response));
    List<ImagesSubasta> imagesSubasta = [];
    for (var element in imageSubastaModel.imagesSubastas) {
      if (element.subastaId == subastaId) {
        imagesSubasta.add(element);
      }
    }
    return imagesSubasta;
  }
}
