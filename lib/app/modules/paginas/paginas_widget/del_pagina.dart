import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/modules/paginas/paginas_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class DelPagina extends StatelessWidget {
  final int idPage;

  const DelPagina(this.idPage, {Key? key}) : super(key: key);

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
                        AssetImage('assets/icons/paginas.png'),
                        size: 60,
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Eliminar página',
                        style:
                            TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Aquí podrás gestionar tus páginas',
                        style:
                            TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                      ),
                    ),
                    const Divider(),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        '¿Está seguro que desea eliminar esta página?',
                        style:
                            TextStyle(fontSize: 26, color: ColorsUtils.grey1),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ButtonWid(
                          width: 400,
                          height: 50,
                          color1: ColorsUtils.red,
                          color2: ColorsUtils.red,
                          textButt: 'Eliminar página',
                          voidCallback: () => _.saveDelPagina(idPage)),
                    )
                  ])));
    });
  }
}
