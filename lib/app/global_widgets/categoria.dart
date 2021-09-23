import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorias.dart';
import 'package:subastalo/app/modules/root/root_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class CategoriaWid extends StatelessWidget {
  final Categoria categoria;
  final Datum? datumSelect;

  const CategoriaWid(
      {Key? key, required this.categoria, required this.datumSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetBuilder<RootLogic>(builder: (_) {
      return SizedBox(
        width: ((size.width * 0.85) - 40) / 6,
        height: 35,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageIcon(AssetImage(categoria.asset),
                size: 32, color: ColorsUtils.orange1),
            const SizedBox(
              width: 10,
            ),
            Container(
                width: 154,
                decoration: BoxDecoration(
                    color: ColorsUtils.white,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(
                    height: 0,
                    color: Colors.transparent,
                  ),
                  hint: Text(categoria.name),
                  items: categoria.data
                      .map((Datum datum) => DropdownMenuItem<Datum>(
                          child: Text(datum.name), value: datum))
                      .toList(),
                  onChanged: (value) => _.datumSelect(
                      value as Datum, categoria.name),
                  value: datumSelect,
                )),
          ],
        ),
      );
    });
  }
}
