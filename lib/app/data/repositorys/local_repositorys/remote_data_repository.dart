import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/models/token.dart';
import 'package:subastalo/app/data/providers/local_providers/remote_data_provider.dart';

class RemoteDataRepository {
  final RemoteDataProvider _dataProvider = Get.find<RemoteDataProvider>();

  Future<TokenModel?> login(String email, String password) =>
      _dataProvider.login(email, password);

  Future<TokenModel?> create(
          String dni, String name, String email, String password) =>_dataProvider.
      create(dni, name, email, password);

  Future<TokenModel?> refresh(String token) => _dataProvider.refresh(token);

  Future<CategorysModel?> categorys() => _dataProvider.categorys();
}
