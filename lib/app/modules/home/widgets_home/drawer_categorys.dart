import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/categoria.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/modules/home/home_logic.dart';

class DrawerCategorys extends StatelessWidget {
  const DrawerCategorys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(
        id: 'categorias',
        builder: (_) {
          final categorias = _.categoriasModel?.categorias;
          return categorias != null
              ? Drawer(
                  child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (__, index) {
                    return Center(child: CategoriaWid(categoria: categorias[index]));
                  },
                  separatorBuilder: (__, index) =>const Divider(),
                  itemCount: categorias.length,
                ))
              : const Center(child: LoadingWid());
        });
  }
}
