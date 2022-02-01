import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/page.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/paginas/paginas_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class EditPagina extends StatelessWidget {
  final int idPagina;

  const EditPagina(this.idPagina, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaginasLogic>(builder: (_) {
      return SingleChildScrollView(
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
                  'Editar página',
                  style: TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                ),
              ),
              const Center(
                child: Text(
                  'Aquí podrás editar las páginas.',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                ),
              ),
              const Divider(),
              const SizedBox(height: 20),
              const Text('Nombre de la página',
                  style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
              const SizedBox(height: 5),
              TxtFieldBor(
                  controller: _.titleCtrl,
                  validator: isNotEmpty,
                  width: 400,
                  hint: 'Nombre de la página',
                  icon: null,
                  enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                  focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
              const SizedBox(height: 20),
              const Text('HTML de la página',
                  style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
              const SizedBox(height: 5),
              TxtFieldBor(
                  controller: _.htmlCtrl,
                  validator: isNotEmpty,
                  width: 400,
                  hint: 'HTML de la página',
                  icon: null,
                  enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                  focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
              const SizedBox(height: 30),
              ButtonWid(
                  width: 400,
                  height: 50,
                  color1: ColorsUtils.blueButt1,
                  color2: ColorsUtils.blueButt2,
                  textButt: 'Guardar página',
                  voidCallback: () => _.saveEditPagina(idPagina)),
            ],
          ),
        ),
      );
    });
  }
}
