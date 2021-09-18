import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/data/providers/local_providers/local_data_provider.dart';

class LocalDataRepository {
  final _localDataProvider = Get.find<LocalDataProvider>();

  Future<SubastasModel?> getSubastas() => _localDataProvider.getSubastas();
  Future<Subasta?> getSubastaId(String subastaId) => _localDataProvider.getSubastaId(subastaId);
}
