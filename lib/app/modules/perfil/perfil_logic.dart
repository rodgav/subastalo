import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/departamentos.dart';
import 'package:subastalo/app/data/models/distritos.dart';
import 'package:subastalo/app/data/models/provincias.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';

class PerfilLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();
  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final addressCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  DepartamentosModel? _departamentosModel;
  Departamento? _selectDepart;
  ProvinciasModel? _provinciasModel;
  Provincia? _selectProv;
  DistritosModel? _distritosModel;
  Distrito? _selectDistr;

  DepartamentosModel? get departamentosModel => _departamentosModel;

  Departamento? get selectDepart => _selectDepart;

  ProvinciasModel? get provinciasModel => _provinciasModel;

  Provincia? get selectProv => _selectProv;

  DistritosModel? get distritosModel => _distritosModel;

  Distrito? get selectDistr => _selectDistr;

  DateTime selectedDate = DateTime.now();

  @override
  onReady() {
    _userId();
    super.onReady();
  }

  void _userId() async {
    final token = await AuthService.to.getToken();
    final idUser = AuthService.to.idUser;
    if (token != null) {
      final user = await _dataRepository.userId(token, idUser);
      if (user != null) {
        nameCtrl.text = user.name;
        phoneCtrl.text = user.phone;
        addressCtrl.text = user.address;
        emailCtrl.text = user.email;
      }
    }
    _getDepartamentos();
  }

  _getDepartamentos() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _departamentosModel = await _dataRepository.departamentos(token);
      update(['departamentos']);
    }
  }

  _getProvincias(String idDepartamento) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _provinciasModel =
          await _dataRepository.provincias(token, idDepartamento);
      update(['provincias']);
    }
  }

  _getDistritos(String idProvincia) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _distritosModel = await _dataRepository.distritos(token, idProvincia);
      update(['distritos']);
    }
  }

  void departSelect(Departamento departamento) {
    _selectDepart = departamento;
    _selectProv = null;
    _selectDistr = null;
    update(['departamentos', 'provincias', 'distritos']);
    _getProvincias(departamento.id);
  }

  void provSelect(Provincia provincia) {
    _selectProv = provincia;
    _selectDistr = null;
    update(['provincias', 'distritos']);
    _getDistritos(provincia.id);
  }

  void distriSelect(Distrito distrito) {
    _selectDistr = distrito;
    update(['distritos']);
  }

  void selectDate() async {
    final picked = await showDatePicker(
        locale: AuthService.to.getLocale(),
        context: Get.context!,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(selectedDate.year + 6));
    if (picked != null) {
      selectedDate = picked;
      update(['date']);
    }
  }
}
