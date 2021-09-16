import 'package:get/get.dart';
import 'package:subastalo/app/modules/home/home_binding.dart';
import 'package:subastalo/app/modules/home/home_view.dart';
import 'package:subastalo/app/modules/root/root_binding.dart';
import 'package:subastalo/app/modules/root/root_view.dart';
import 'package:subastalo/app/modules/subastas/subastas_binding.dart';
import 'package:subastalo/app/modules/subastas/subastas_view.dart';
import 'package:subastalo/app/modules/subastas_detail/subastas_detail_binding.dart';
import 'package:subastalo/app/modules/subastas_detail/subastas_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;
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
              name: _Paths.home,
              page: () => const HomePage(),
              binding: HomeBinding(),
              title: null,
              children: [
                GetPage(
                    name: _Paths.subastas,
                    page: () => const SubastasPage(),
                    binding: SubastasBinding(),
                    children: [
                      GetPage(
                          name: _Paths.subastasDetail,
                          page: () => const SubastasDetailPage(),
                          binding: SubastasDetailBinding())
                    ])
              ]),
        ])
  ];
}
