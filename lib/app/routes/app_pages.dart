import 'package:get/get.dart';
import 'package:subastalo/app/modules/home/home_binding.dart';
import 'package:subastalo/app/modules/home/home_view.dart';
import 'package:subastalo/app/modules/root/root_binding.dart';
import 'package:subastalo/app/modules/root/root_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
        name: '/',
        page: () => RootPage(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              preventDuplicates: true,
              name: _Paths.HOME,
              page: () => HomePage(),
              binding: HomeBinding(),
              title: null)
        ])
  ];
}
