import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorias.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class RootLogic extends GetxController {
  final _localDataRepository = Get.find<LocalDataRepository>();
  CategoriasModel? _categoriasModel;
  Datum? _vehiculo;
  Datum? _propiedades;
  Datum? _tecnologia;
  Datum? _mobiliaria;
  Datum? _repuestos;
  Datum? _chatarra;
  Datum? _maquinaria;
  Datum? _electronica;
  Datum? _empresas;
  Datum? _ubicaciones;

  CategoriasModel? get categoriasModel => _categoriasModel;

  Datum? get vehiculo => _vehiculo;

  Datum? get propiedades => _propiedades;

  Datum? get tecnologia => _tecnologia;

  Datum? get mobiliaria => _mobiliaria;

  Datum? get repuestos => _repuestos;

  Datum? get chatarra => _chatarra;

  Datum? get maquinaria => _maquinaria;

  Datum? get electronica => _electronica;

  Datum? get empresas => _empresas;

  Datum? get ubicaciones => _ubicaciones;

  @override
  void onReady() {
    _getCategorias();
    super.onReady();
  }

  void toHome(String? location) {
    if (location != '/' &&
        location != '/home' &&
        location != '/home/subastas') {
      Get.rootDelegate.offNamed(Routes.home);
    }
  }

  void _getCategorias() async {
    _categoriasModel = await _localDataRepository.getCategorias();
    update(['categorias']);
  }

  void datumSelect(Datum value, String name) {
    switch (name) {
      case 'Vehículos':
        _vehiculo = value;
        break;
      case 'Propiedades':
        _propiedades = value;
        break;
      case 'Tecnología':
        _tecnologia = value;
        break;
      case 'Mobiliaria':
        _mobiliaria = value;
        break;
      case 'Repuestos':
        _repuestos = value;
        break;
      case 'Chatarra':
        _chatarra = value;
        break;
      case 'Maquinaria':
        _maquinaria = value;
        break;
      case 'Electrónica':
        _electronica = value;
        break;
      case 'Empresas':
        _empresas = value;
        break;
      case 'Ubicaciones':
        _ubicaciones = value;
        break;
    }
    update(['categorias']);
  }

  void toLogin() {
    Get.rootDelegate.offNamed(Routes.login);
  }
}
