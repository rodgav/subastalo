import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
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
import 'package:subastalo/app/data/providers/local_providers/remote_data_provider.dart';

class RemoteDataRepository {
  final RemoteDataProvider _dataProvider = Get.find<RemoteDataProvider>();

  Future<TokenModel?> login(String email, String password) =>
      _dataProvider.login(email, password);

  Future<TokenModel?> register(String dni, String name, String email,
          String password, String idRole) =>
      _dataProvider.register(dni, name, email, password, idRole);

  Future<bool> editUser(String token, int idUser, String dni, String name,
          String email, String password, String idRole) =>
      _dataProvider.editUser(token, idUser, dni, name, email, password, idRole);

  Future<bool> deleteUser(String token, int idUser) =>
      _dataProvider.deleteUser(token, idUser);

  Future<TokenModel?> refresh(String token) => _dataProvider.refresh(token);

  Future<Category?> createCategory(String name, String token) =>
      _dataProvider.createCategory(name, token);

  Future<bool> updateCategory(String name, String idCategory, String token) =>
      _dataProvider.updateCategory(name, idCategory, token);

  Future<bool> deleteCategory(String idCategory, String token) =>
      _dataProvider.deleteCategory(idCategory, token);

  Future<CategorysModel?> categorys() => _dataProvider.categorys();

  Future<VendedorSubasta?> createVendedorSubasta(
          int idSubasta,
          String nameVendedor,
          String companyVendedor,
          String emailVendedor,
          String address,
          String token) =>
      _dataProvider.createVendedorSubasta(idSubasta, nameVendedor,
          companyVendedor, emailVendedor, address, token);

  Future<Subasta?> createSubasta(
          int idCategory,
          int idSubCategory,
          int idTypeSubasta,
          int idHoraSubasta,
          String title,
          String price,
          String date,
          String token) =>
      _dataProvider.createSubasta(
          idCategory,
          idSubCategory,
          idTypeSubasta,
          idHoraSubasta,
          title,
          price,
          date,
          token);

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
          String token) =>
      _dataProvider.createMediaSubasta(
          filePath1,
          filePath2,
          filePath3,
          filePath4,
          filePath5,
          filePath6,
          filePath7,
          filePath8,
          filePath9,
          filePath10,
          videoUrl,
          idSubasta,
          token);

  Future<SubastaModel?> subastas(String token) => _dataProvider.subastas(token);

  Future<SubastaModel?> pendientes(String token) =>
      _dataProvider.pendientes(token);

  Future<SubastaModel?> bloqueadas(String token) =>
      _dataProvider.bloqueadas(token);

  Future<SubastaModel?> aprobadas(String token) =>
      _dataProvider.aprobadas(token);

  Future<SubastaModel?> misSubastas(String token) =>
      _dataProvider.misSubastas(token);

  Future<SubastaModel?> misubastaPendiente(String token) =>
      _dataProvider.misubastaPendiente(token);

  Future<SubastaElement?> createFavorita(String token, String idSubasta) =>
      _dataProvider.createFavorita(token, idSubasta);

  Future<FavoritaModel?> favoritas(String token) =>
      _dataProvider.favoritas(token);

  Future<SubastaElement?> deleteFavorita(String token, String idFavoSubasta) =>
      _dataProvider.deleteFavorita(token, idFavoSubasta);

  Future<FavoritaModel?> createHistorial(String token, String idSubasta) =>
      _dataProvider.createHistorial(token, idSubasta);

  Future<FavoritaModel?> historial(String token) =>
      _dataProvider.historial(token);

  Future<SubastaModel?> subastaId(String idSubasta, String token) =>
      _dataProvider.subastaId(idSubasta, token);

  Future<HorasSubastaModel?> horasSubasta(String token) =>
      _dataProvider.horasSubasta(token);

  Future<TiposSubastaModel?> tiposSubasta(String token) =>
      _dataProvider.tiposSubasta(token);

  Future<DepartamentosModel?> departamentos(String token) =>
      _dataProvider.departamentos(token);

  Future<ProvinciasModel?> provincias(String token, String idDepartamento) =>
      _dataProvider.provincias(token, idDepartamento);

  Future<DistritosModel?> distritos(String token, String idProvincia) =>
      _dataProvider.distritos(token, idProvincia);

  Future<SubCategory?> createSubCategory(
          String idCategory, String name, String token) =>
      _dataProvider.createSubCategory(idCategory, name, token);

  Future<List<SubCategory>?> subCategorys(String token, String idCategory) =>
      _dataProvider.subCategorys(token, idCategory);

  Future<bool> updateSubCategory(
          String name, String idSubCategory, String token) =>
      _dataProvider.updateSubCategory(name, idSubCategory, token);

  Future<bool> deleteSubCategory(String idSubCategory, String token) =>
      _dataProvider.deleteSubCategory(idSubCategory, token);

  Future<Pagina?> createPage(String title, String html, String token) =>
      _dataProvider.createPage(title, html, token);

  Future<PaginasModel?> pages(String token) => _dataProvider.pages(token);

  Future<bool> deletePage(String token, int idPage) =>
      _dataProvider.deletePage(token, idPage);

  Future<bool> updatePage(
          String token, int idPage, String title, String html) =>
      _dataProvider.updatePage(token, idPage, title, html);

  Future<Comment?> createComment(
          int idUser, int idSubasta, String comment, String token) =>
      _dataProvider.createComment(idUser, idSubasta, comment, token);

  Future<CommentModel?> comment(String token) => _dataProvider.comment(token);

  Future<bool> deleComment(String token, int idComme) =>
      _dataProvider.deleComment(token, idComme);

  Future<bool> updaComment(String token, int idComme) =>
      _dataProvider.updaComment(token, idComme);

  Future<UserModel?> user(String token) => _dataProvider.user(token);

  Future<UserModel?> userAdmin(String token) => _dataProvider.userAdmin(token);

  Future<User?> userId(String token, String idUser) =>
      _dataProvider.userId(token, idUser);

  Future<SubastaModel?> subastasUser(String token, String idUser) =>
      _dataProvider.subastasUser(token, idUser);

  Future<Campaign?> createCampaign(String name, String code, String amount,
          String dateStart, String dateFinish, String token) =>
      _dataProvider.createCampaign(
          name, code, amount, dateStart, dateFinish, token);

  Future<bool> updateCampaign(int idCampaign, String name, String code,
          String amount, String dateStart, String dateFinish, String token) =>
      _dataProvider.updateCampaign(
          idCampaign, name, code, amount, dateStart, dateFinish, token);

  Future<bool> deleteCampaign(int idCampaign, String token) =>
      _dataProvider.deleteCampaign(idCampaign, token);

  Future<CampaignModel?> campaign(String token) =>
      _dataProvider.campaign(token);

  Future<Message?> createMessage(int idSender, int idReceiver, String title,
          String message, int state, String token) =>
      _dataProvider.createMessage(
          idSender, idReceiver, title, message, state, token);

  Future<MessageModel?> message(String token) => _dataProvider.message(token);

  Future<bool> deleteMessage(String token, int idMessage) =>
      _dataProvider.deleteMessage(token, idMessage);

  Future<bool> createPay(PlatformFile filePath, int idUser, int idTypePay,
          String name, String description, String dateFinish, String token) =>
      _dataProvider.createPay(
          filePath, idUser, idTypePay, name, description, dateFinish, token);

  Future<PagoModel?> pays(String token) => _dataProvider.pays(token);

  Future<PagoModel?> miPay(String token) => _dataProvider.miPay(token);

  Future<bool> updateStatePay(String token, int idPay, int state) =>
      _dataProvider.updateStatePay(token,idPay,state);

  Future<bool> updateStateSubas(
          int idSubasta, int idStateSubasta, String token) =>
      _dataProvider.updateStateSubas(idSubasta, idStateSubasta, token);
}
