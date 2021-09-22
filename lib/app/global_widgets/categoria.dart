import 'package:flutter/material.dart';
import 'package:subastalo/app/data/models/categorias.dart';
import 'package:subastalo/utils/colors_utils.dart';

class CategoriaWid extends StatelessWidget {
  final Categoria categoria;

  const CategoriaWid({Key? key, required this.categoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {final size = MediaQuery.of(context).size;
  final bool web = size.width > 800;
    return SizedBox(
      width: ((size.width * 0.85)-40) / 6,
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
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: DropdownButton(
                isExpanded: true,
                underline: Container(
                  height: 0,
                  color: Colors.transparent,
                ),
                items: [
                  DropdownMenuItem(
                      child: Text(
                    categoria.name,
                    style: const TextStyle(color: ColorsUtils.black),
                  ))
                ]),
          )
        ],
      ),
    );
  }
}
