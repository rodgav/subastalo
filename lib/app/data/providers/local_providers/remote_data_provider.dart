import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart' as getx;
import 'package:subastalo/app/data/models/campaign.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/models/comment.dart';
import 'package:subastalo/app/data/models/departamentos.dart';
import 'package:subastalo/app/data/models/distritos.dart';
import 'package:subastalo/app/data/models/favoritas.dart';
import 'package:subastalo/app/data/models/horas_subasta.dart';
import 'package:subastalo/app/data/models/media_subasta.dart';
import 'package:subastalo/app/data/models/message.dart';
import 'package:subastalo/app/data/models/page.dart';
import 'package:subastalo/app/data/models/pago.dart';
import 'package:subastalo/app/data/models/provincias.dart';
import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/data/models/tipos_subasta.dart';
import 'package:subastalo/app/data/models/token.dart';
import 'package:subastalo/app/data/models/user.dart';
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

  Future<TokenModel?> register(String dni, String name, String email,
      String password, String idRole) async {
    final json = {
      'dni': dni,
      'name': name,
      'email': email,
      'password': password,
      'idRole': idRole
    };
    try {
      final response =
          await _dio.post('/user', data: {'json': jsonEncode(json)});
      return TokenModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<bool> editUser(String token, int idUser, String dni, String name,
      String email, String password, String idRole) async {
    final json = {
      'dni': dni,
      'name': name,
      'email': email,
      'password': password,
      'idRole': idRole
    };
    try {
      final response = await _dio.put('/user/$idUser',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return response.data['code'] == 200;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteUser(String token, int idUser) async {
    try {
      final response = await _dio.delete('/user/$idUser',
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      return false;
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

  Future<Category?> createCategory(String name, String token) async {
    try {
      final json = {"name": name};
      final response = await _dio.post('/category',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return Category.fromJson(response.data['category']);
    } catch (e) {
      print('createCategory error $e');
      return null;
    }
  }

  Future<bool> updateCategory(
      String name, String idCategory, String token) async {
    try {
      final json = {"name": name};
      final response = await _dio.put('/category/$idCategory',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return response.data['code'] == 200;
    } catch (e) {
      print('updateCategory error $e');
      return false;
    }
  }

  Future<bool> deleteCategory(String idCategory, String token) async {
    try {
      final response = await _dio.delete('/category/$idCategory',
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      print('deleteCategory error $e');
      return false;
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
      int idSubCategory,
      int idTypeSubasta,
      int idHoraSubasta,
      String title,
      String price,
      String date,
      String token) async {
    try {
      final json = {
        "idCategory": idCategory,
        "idSubCategory": idSubCategory,
        "idTypeSubasta": idTypeSubasta,
        "idHoraSubasta": idHoraSubasta,
        "title": title,
        "price": price,
        "date": date,
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

  Future<SubastaModel?> subastas(String token) async {
    try {
      final response = await _dio.get('/subasta',
          options: Options(headers: {'Authorization': token}));
      return SubastaModel.fromJson(response.data);
    } catch (e) {
      print('subastas error $e');
      return null;
    }
  }

  Future<SubastaModel?> pendientes(String token) async {
    try {
      final response = await _dio.get('/subastaPendiente',
          options: Options(headers: {'Authorization': token}));
      return SubastaModel.fromJson(response.data);
    } catch (e) {
      print('pendientes error $e');
      return null;
    }
  }

  Future<SubastaModel?> bloqueadas(String token) async {
    try {
      final response = await _dio.get('/subastaBloqueada',
          options: Options(headers: {'Authorization': token}));
      return SubastaModel.fromJson(response.data);
    } catch (e) {
      print('bloqueadas error $e');
      return null;
    }
  }

  Future<SubastaModel?> aprobadas(String token) async {
    try {
      final response = await _dio.get('/subastaAprobada',
          options: Options(headers: {'Authorization': token}));
      return SubastaModel.fromJson(response.data);
    } catch (e) {
      print('aprobadas error $e');
      return null;
    }
  }

  Future<SubastaModel?> misSubastas(String token) async {
    try {
      final response = await _dio.get('/misubasta',
          options: Options(headers: {'Authorization': token}));
      return SubastaModel.fromJson(response.data);
    } catch (e) {
      print('misSubastas error $e');
      return null;
    }
  }

  Future<SubastaModel?> misubastaPendiente(String token) async {
    try {
      final response = await _dio.get('/misubastaPendiente',
          options: Options(headers: {'Authorization': token}));
      return SubastaModel.fromJson(response.data);
    } catch (e) {
      print('misubastaPendiente error $e');
      return null;
    }
  }

  Future<SubastaElement?> createFavorita(String token, String idSubasta) async {
    try {
      final response = await _dio.post('/favoritaSubasta',
          data: {
            'json': jsonEncode({'idSubasta': idSubasta})
          },
          options: Options(headers: {'Authorization': token}));
      return SubastaElement.fromJson(response.data['subasta']);
    } catch (e) {
      print('createFavorita error $e');
      return null;
    }
  }

  Future<FavoritaModel?> favoritas(String token) async {
    try {
      final response = await _dio.get('/favoritaSubasta',
          options: Options(headers: {'Authorization': token}));
      return FavoritaModel.fromJson(response.data);
    } catch (e) {
      print('favoritas error $e');
      return null;
    }
  }

  Future<SubastaElement?> deleteFavorita(
      String token, String idFavoSubasta) async {
    try {
      final response = await _dio.delete('/favoritaSubasta/$idFavoSubasta',
          options: Options(headers: {'Authorization': token}));
      return SubastaElement.fromJson(response.data['subasta']);
    } catch (e) {
      print('deleteFavorita error $e');
      return null;
    }
  }

  Future<FavoritaModel?> createHistorial(String token, String idSubasta) async {
    try {
      final response = await _dio.post('/historialSubasta',
          data: {
            'json': jsonEncode({'idSubasta': idSubasta})
          },
          options: Options(headers: {'Authorization': token}));
      return FavoritaModel.fromJson(response.data);
    } catch (e) {
      print('createHistorial error $e');
      return null;
    }
  }

  Future<FavoritaModel?> historial(String token) async {
    try {
      final response = await _dio.get('/historialSubasta',
          options: Options(headers: {'Authorization': token}));
      return FavoritaModel.fromJson(response.data);
    } catch (e) {
      print('favoritas error $e');
      return null;
    }
  }

  Future<SubastaModel?> subastaId(String idSubasta, String token) async {
    try {
      final response = await _dio.get('/miSubastaId',
          queryParameters: {'idSubasta': idSubasta},
          options: Options(headers: {'Authorization': token}));
      return SubastaModel.fromJson(response.data);
    } catch (e) {
      print('misSubastas error $e');
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
      final json = {
        'videoUrl': videoUrl,
        'idSubasta': idSubasta,
        'image1': base64Encode(filePath1.bytes ?? [0]),
        'image2': base64Encode(filePath2.bytes ?? [0]),
        'image3': base64Encode(filePath3.bytes ?? [0]),
        'image4': base64Encode(filePath4.bytes ?? [0]),
        'image5': base64Encode(filePath5.bytes ?? [0]),
        'image6': base64Encode(filePath6.bytes ?? [0]),
        'image7': base64Encode(filePath7.bytes ?? [0]),
        'image8': base64Encode(filePath8.bytes ?? [0]),
        'image9': base64Encode(filePath9.bytes ?? [0]),
        'image10': base64Encode(filePath10.bytes ?? [0]),
      };
      final response = await _dio.post('/mediaSubasta',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
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

  Future<HorasSubastaModel?> horasSubasta(String token) async {
    try {
      final response = await _dio.get('/hoursSubasta',
          options: Options(headers: {'Authorization': token}));
      return HorasSubastaModel.fromJson(response.data);
    } catch (e) {
      print('horasSubasta error $e');
      return null;
    }
  }

  Future<TiposSubastaModel?> tiposSubasta(String token) async {
    try {
      final response = await _dio.get('/typeSubasta',
          options: Options(headers: {'Authorization': token}));
      return TiposSubastaModel.fromJson(response.data);
    } catch (e) {
      print('tiposSubasta error $e');
      return null;
    }
  }

  Future<DepartamentosModel?> departamentos(String token) async {
    try {
      final response = await _dio.get('/departamentos',
          options: Options(headers: {'Authorization': token}));
      return DepartamentosModel.fromJson(response.data);
    } catch (e) {
      print('departamentos error $e');
      return null;
    }
  }

  Future<ProvinciasModel?> provincias(
      String token, String idDepartamento) async {
    try {
      final response = await _dio.get('/provincias',
          queryParameters: {'idDepartamento': idDepartamento},
          options: Options(headers: {'Authorization': token}));
      return ProvinciasModel.fromJson(response.data);
    } catch (e) {
      print('provincias error $e');
      return null;
    }
  }

  Future<DistritosModel?> distritos(String token, String idProvincia) async {
    try {
      final response = await _dio.get('/distritos',
          queryParameters: {'idProvincia': idProvincia},
          options: Options(headers: {'Authorization': token}));
      return DistritosModel.fromJson(response.data);
    } catch (e) {
      print('tiposSubasta error $e');
      return null;
    }
  }

  Future<SubCategory?> createSubCategory(
      String idCategory, String name, String token) async {
    try {
      final json = {"idCategory": idCategory, "name": name};
      final response = await _dio.post('/subCategory',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return SubCategory.fromJson(response.data['sub_category']);
    } catch (e) {
      print('createSubCategory error $e');
      return null;
    }
  }

  Future<List<SubCategory>?> subCategorys(
      String token, String idCategory) async {
    try {
      final response = await _dio.get('/subCategory',
          queryParameters: {'idCategory': idCategory},
          options: Options(headers: {'Authorization': token}));
      return List<SubCategory>.from(
          response.data["sub_categorys"].map((x) => SubCategory.fromJson(x)));
    } catch (e) {
      print('tiposSubasta error $e');
      return null;
    }
  }

  Future<bool> updateSubCategory(
      String name, String idSubCategory, String token) async {
    try {
      final json = {"name": name};
      final response = await _dio.put('/subCategory/$idSubCategory',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return response.data['code'] == 200;
    } catch (e) {
      print('updateCategory error $e');
      return false;
    }
  }

  Future<bool> deleteSubCategory(String idSubCategory, String token) async {
    try {
      final response = await _dio.delete('/subCategory/$idSubCategory',
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      print('deleteCategory error $e');
      return false;
    }
  }

  Future<Pagina?> createPage(String title, String html, String token) async {
    try {
      final json = {"title": title, "html": html};
      final response = await _dio.post('/page',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return Pagina.fromJson(response.data['paginas']);
    } catch (e) {
      print('createPage error $e');
      return null;
    }
  }

  Future<PaginasModel?> pages(String token) async {
    try {
      final response = await _dio.get('/page',
          options: Options(headers: {'Authorization': token}));
      return PaginasModel.fromJson(response.data);
    } catch (e) {
      print('pages error $e');
      return null;
    }
  }

  Future<bool> deletePage(String token, int idPage) async {
    try {
      final response = await _dio.delete('/page/$idPage',
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      print('deletePage error $e');
      return false;
    }
  }

  Future<bool> updatePage(
      String token, int idPage, String title, String html) async {
    try {
      final response = await _dio.put('/page/$idPage',
          data: {
            'json': jsonEncode({'title': title, 'html': html})
          },
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      print('updatePage error $e');
      return false;
    }
  }

  Future<Comment?> createComment(
      int idUser, int idSubasta, String comment, String token) async {
    try {
      final json = {
        "idUser": idUser,
        "idSubasta": idSubasta,
        "comment": comment
      };
      final response = await _dio.post('/comment',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return Comment.fromJson(response.data['comment']);
    } catch (e) {
      print('createComment error $e');
      return null;
    }
  }

  Future<CommentModel?> comment(String token) async {
    try {
      final response = await _dio.get('/comment',
          options: Options(headers: {'Authorization': token}));
      return CommentModel.fromJson(response.data);
    } catch (e) {
      print('comment error $e');
      return null;
    }
  }

  Future<bool> deleComment(String token, int idComme) async {
    try {
      final response = await _dio.delete('/comment/$idComme',
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      print('deleComment error $e');
      return false;
    }
  }

  Future<bool> updaComment(String token, int idComme) async {
    try {
      final response = await _dio.put('/comment/$idComme',
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      print('updaComment error $e');
      return false;
    }
  }

  Future<UserModel?> user(String token) async {
    try {
      final response = await _dio.get('/user',
          options: Options(headers: {'Authorization': token}));
      return UserModel.fromJson(response.data);
    } catch (e) {
      print('user error $e');
      return null;
    }
  }

  Future<UserModel?> userAdmin(String token) async {
    try {
      final response = await _dio.get('/userAdmin',
          options: Options(headers: {'Authorization': token}));
      return UserModel.fromJson(response.data);
    } catch (e) {
      print('userAdmin error $e');
      return null;
    }
  }

  Future<User?> userId(String token, String idUser) async {
    try {
      final response = await _dio.get('/userId',
          queryParameters: {'idUser': idUser},
          options: Options(headers: {'Authorization': token}));
      final users = response.data['user'] as List<dynamic>?;
      if (users != null && users.isNotEmpty) {
        return User.fromJson(users[0]);
      } else {
        return null;
      }
    } catch (e) {
      print('userId error $e');
      return null;
    }
  }

  Future<SubastaModel?> subastasUser(String token, String idUser) async {
    try {
      final response = await _dio.get('/subastaUser',
          queryParameters: {'idUser': idUser},
          options: Options(headers: {'Authorization': token}));
      return SubastaModel.fromJson(response.data);
    } catch (e) {
      print('subastasUser error $e');
      return null;
    }
  }

  Future<Campaign?> createCampaign(String name, String code, String amount,
      String dateStart, String dateFinish, String token) async {
    try {
      final json = {
        "name": name,
        "code": code,
        "amount": amount,
        "dateStart": dateStart,
        "dateFinish": dateFinish,
      };
      final response = await _dio.post('/campaign',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return Campaign.fromJson(response.data['campaign']);
    } catch (e) {
      print('createCampaign error $e');
      return null;
    }
  }

  Future<bool> updateCampaign(int idCampaign, String name, String code,
      String amount, String dateStart, String dateFinish, String token) async {
    try {
      final json = {
        "name": name,
        "code": code,
        "amount": amount,
        "dateStart": dateStart,
        "dateFinish": dateFinish,
      };
      final response = await _dio.put('/campaign/$idCampaign',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return response.data['code'] == 200;
    } catch (e) {
      print('updateCampaign error $e');
      return false;
    }
  }

  Future<bool> deleteCampaign(int idCampaign, String token) async {
    try {
      final response = await _dio.delete('/campaign/$idCampaign',
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      print('deleteCampaign error $e');
      return false;
    }
  }

  Future<CampaignModel?> campaign(String token) async {
    try {
      final response = await _dio.get('/campaign',
          options: Options(headers: {'Authorization': token}));
      return CampaignModel.fromJson(response.data);
    } catch (e) {
      print('campaign error $e');
      return null;
    }
  }

  Future<Message?> createMessage(int idSender, int idReceiver, String title,
      String message, int state, String token) async {
    try {
      final json = {
        "idSender": idSender,
        "idReceiver": idReceiver,
        "title": title,
        "message": message,
        "state": state,
      };
      final response = await _dio.post('/message',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return Message.fromJson(response.data['messages']);
    } catch (e) {
      print('createMessage error $e');
      return null;
    }
  }

  Future<MessageModel?> message(String token) async {
    try {
      final response = await _dio.get('/message',
          options: Options(headers: {'Authorization': token}));
      return MessageModel.fromJson(response.data);
    } catch (e) {
      print('message error $e');
      return null;
    }
  }

  Future<bool> deleteMessage(String token, int idMessage) async {
    try {
      final response = await _dio.delete('/message/$idMessage',
          options: Options(headers: {'Authorization': token}));
      return response.data['code'] == 200;
    } catch (e) {
      print('deleteMessage error $e');
      return false;
    }
  }

  Future<bool> createPay(PlatformFile filePath, int idUser, int idTypePay,
      String name, String description, String dateFinish, String token) async {
    try {
      final json = {
        "image": base64Encode(filePath.bytes ?? [0]),
        "idUser": idUser,
        "idTypePay": idTypePay,
        "name": name,
        "description": description,
        "dateFinish": dateFinish,
      };
      final response = await _dio.post('/pay',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      final status = response.data['status'];
      if (status == 'success') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('createPay error $e');
      return false;
    }
  }

  Future<PagoModel?> pays(String token) async {
    try {
      final response = await _dio.get('/pay',
          options: Options(headers: {'Authorization': token}));
      return PagoModel.fromJson(response.data);
    } catch (e) {
      print('pays error $e');
      return null;
    }
  }

  Future<PagoModel?> miPay(String token) async {
    try {
      final response = await _dio.get('/miPay',
          options: Options(headers: {'Authorization': token}));
      return PagoModel.fromJson(response.data);
    } catch (e) {
      print('miPay error $e');
      return null;
    }
  }

  Future<bool> updateStatePay(String token, int idPay, int state) async {
    try {
      final json = {"state": state};
      final response = await _dio.put('/pay/$idPay',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return response.data['code'] == 200;
    } catch (e) {
      print('updateStateSubas error $e');
      return false;
    }
  }

  Future<bool> updateStateSubas(
      int idSubasta, int idStateSubasta, String token) async {
    try {
      final json = {"idStateSubasta": idStateSubasta};
      final response = await _dio.put('/subastaState/$idSubasta',
          options: Options(headers: {'Authorization': token}),
          data: {'json': jsonEncode(json)});
      return response.data['code'] == 200;
    } catch (e) {
      print('updateStateSubas error $e');
      return false;
    }
  }
}
