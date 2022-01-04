import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart' as getx;
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/models/media_subasta.dart';
import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/data/models/token.dart';
import 'package:subastalo/app/data/models/vendedor_subasta.dart';

class RemoteDataProvider {
  final Dio _dio = getx.Get.find<Dio>();

  Future<TokenModel?> login(String email, String password) async {
    final json = {'email': email, 'password': password};
    try {
      final response =
          await _dio.post('/login', data: {'json': jsonEncode(json)});
      return TokenModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<TokenModel?> register(
      String dni, String name, String email, String password) async {
    final json = {
      'dni': dni,
      'name': name,
      'email': email,
      'password': password
    };
    try {
      final response =
          await _dio.post('/user', data: {'json': jsonEncode(json)});
      return TokenModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<TokenModel?> refresh(String token) async {
    try {
      final response = await _dio.post('/refresh',
          options: Options(headers: {'Authorization': token}));
      return TokenModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<CategorysModel?> categorys() async {
    try {
      final response = await _dio.get('/category');
      return CategorysModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<Subasta?> createSubasta(
      int idCategory,
      int idTypeSubasta,
      int idHoraSubasta,
      int idStateSubasta,
      String title,
      String price,
      String date,
      String brand,
      String model,
      String year,
      String mileage,
      String fuel,
      String details,
      String token) async {
    try {
      final json = {
        "idCategory": idCategory,
        "idTypeSubasta": idTypeSubasta,
        "idHoraSubasta": idHoraSubasta,
        "idStateSubasta": idStateSubasta,
        "title": title,
        "price": price,
        "date": date,
        "brand": brand,
        "model": model,
        "year": year,
        "mileage": mileage,
        "fuel": fuel,
        "details": details
      };
      final response = await _dio.post('/subasta',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return Subasta.fromJson(response.data['subasta']);
    } catch (e) {
      print('createSubasta error $e');
      return null;
    }
  }

  Future<MediaSubasta?> createMediaSubasta(
      PlatformFile filePath1,
      PlatformFile filePath2,
      PlatformFile filePath3,
      PlatformFile filePath4,
      PlatformFile filePath5,
      PlatformFile filePath6,
      PlatformFile filePath7,
      PlatformFile filePath8,
      PlatformFile filePath9,
      PlatformFile filePath10,
      String videoUrl,
      int idSubasta,
      String token) async {
    try {
      var formData = FormData.fromMap({
        'videoUrl': videoUrl,
        'idSubasta': idSubasta,
        'image1': MultipartFile.fromBytes(List.from(filePath1.bytes ?? [0])),
        'image2': MultipartFile.fromBytes(List.from(filePath2.bytes ?? [0])),
        'image3': MultipartFile.fromBytes(List.from(filePath3.bytes ?? [0])),
        'image4': MultipartFile.fromBytes(List.from(filePath4.bytes ?? [0])),
        'image5': MultipartFile.fromBytes(List.from(filePath5.bytes ?? [0])),
        'image6': MultipartFile.fromBytes(List.from(filePath6.bytes ?? [0])),
        'image7': MultipartFile.fromBytes(List.from(filePath7.bytes ?? [0])),
        'image8': MultipartFile.fromBytes(List.from(filePath8.bytes ?? [0])),
        'image9': MultipartFile.fromBytes(List.from(filePath9.bytes ?? [0])),
        'image10': MultipartFile.fromBytes(List.from(filePath10.bytes ?? [0])),
      });
      final response = await _dio.post('/mediaSubasta',
          options: Options(headers: {'Authorization': token}), data: formData);
      return MediaSubasta.fromJson(response.data['mediaSubasta']);
    } catch (e) {
      print('createMediaSubasta error $e');
      return null;
    }
  }

  Future<VendedorSubasta?> createVendedorSubasta(
      int idSubasta,
      String nameVendedor,
      String companyVendedor,
      String emailVendedor,
      String address,
      String token) async {
    try {
      final json = {
        "idSubasta": idSubasta,
        "nameVendedor": nameVendedor,
        "companyVendedor": companyVendedor,
        "emailVendedor": emailVendedor,
        "address": address,
      };
      final response = await _dio.post('/vendedorSubasta',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return VendedorSubasta.fromJson(response.data['vendedorSubasta']);
    } catch (e) {
      print('createVendedorSubasta error $e');
      return null;
    }
  }
}
