import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/categorias/categorias_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class EditCategoria extends StatelessWidget {
  final int idCateg;

  const EditCategoria(this.idCateg, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoriasLogic>(builder: (_) {
      return  SingleChildScrollView(
          child: Container(
            width: 400,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: _.toBack,
                        icon: const Icon(
                          Icons.close,
                          color: ColorsUtils.blue3,
                        ))
                  ],
                ),
                const Center(
                  child: ImageIcon(
                    AssetImage('assets/icons/categorias.png'),
                    size: 60,
                  ),
                ),
                const Center(
                  child: Text(
                    'Editar categoría',
                    style: TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                  ),
                ),
                const Center(
                  child: Text(
                    'Aquí podrás editar las categorias.',
                    style: TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                  ),
                ),
                const Divider(),
                const SizedBox(height: 20),
                const Text('Nombre de categoría',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    controller: _.nameUpdCtrl,
                    validator: isNotEmpty,
                    width: 400,
                    hint: 'Autos & Otros Vehículos',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 30),
                const Text(
                  'Al cambiar una categoría que contenga 1 o mas productos, '
                  'todos estos productos internos se actualizaran con el cambio '
                  'de categoría.',
                  style: TextStyle(color: ColorsUtils.grey1, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ButtonWid(
                    width: 400,
                    height: 50,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    textButt: 'Guardar categoría',
                    voidCallback: () => _.saveEditCateg(idCateg)),
              ],
            ),
          ),
        );
    });
  }
}
