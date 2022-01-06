import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/modules/home/home_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class CategoriaWid extends StatelessWidget {
  final Category categoria;

  const CategoriaWid({Key? key, required this.categoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(id: 'categorias',builder: (_) {
      return Container(
        margin: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageIcon(AssetImage('assets/icons/${categoria.asset}.png'),
                size: 32, color: ColorsUtils.orange1),
            const SizedBox(
              width: 10,
            ),
            Container(
                width: 150,
                decoration: BoxDecoration(
                    color: ColorsUtils.white,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(
                    height: 0,
                    color: Colors.transparent,
                  ),
                  hint: Text(categoria.name, overflow: TextOverflow.ellipsis),
                  value: _.selected,
                  items: categoria.subCategorys
                      .map((SubCategory subCategory) =>
                          DropdownMenuItem<SubCategory>(
                              child: Text(subCategory.name,
                                  overflow: TextOverflow.ellipsis),
                              value: subCategory))
                      .toList(),
                  onChanged: (value) =>
                      _.subCategorySelect(value as SubCategory),
                )),
          ],
        ),
      );
    });
  }
}
