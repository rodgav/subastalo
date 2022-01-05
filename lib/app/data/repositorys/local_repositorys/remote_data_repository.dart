import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/models/media_subasta.dart';
import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/data/models/token.dart';
import 'package:subastalo/app/data/models/vendedor_subasta.dart';
import 'package:subastalo/app/data/providers/local_providers/remote_data_provider.dart';

class RemoteDataRepository {
  final RemoteDataProvider _dataProvider = Get.find<RemoteDataProvider>();

  Future<TokenModel?> login(String email, String password) =>
      _dataProvider.login(email, password);

  Future<TokenModel?> register(
          String dni, String name, String email, String password) =>
      _dataProvider.register(dni, name, email, password);

  Future<TokenModel?> refresh(String token) => _dataProvider.refresh(token);

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
          String token) =>
      _dataProvider.createSubasta(
          idCategory,
          idTypeSubasta,
          idHoraSubasta,
          idStateSubasta,
          title,
          price,
          date,
          brand,
          model,
          year,
          mileage,
          fuel,
          details,
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

  Future<SubastaModel?> misSubastas(String token) => _dataProvider.misSubastas(token);
}
