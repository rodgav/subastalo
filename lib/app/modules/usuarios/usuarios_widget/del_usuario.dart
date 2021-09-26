import 'package:flutter/material.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

class DelUsuario extends StatelessWidget {
  const DelUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.close,
                    color: ColorsUtils.blue3,
                  )
                ],
              ),
              const Center(
                child: ImageIcon(
                  AssetImage('assets/icons/usuarios.png'),
                  size: 60,
                ),
              ),
              const Center(
                child: Text(
                  'Eliminar usuario',
                  style: TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                ),
              ),
              const Center(
                child: Text(
                  'Aquí podrás gestionar las usuarios creados.',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                ),
              ),
              const Divider(),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  '¿Está seguro que desea eliminar este usuario?',
                  style: TextStyle(fontSize: 26, color: ColorsUtils.grey1),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ButtonWid(
                    width: 400,
                    height: 50,
                    color1: ColorsUtils.red,
                    color2: ColorsUtils.red,
                    textButt: 'Eliminar usuario',
                    voidCallback: () => null),
              )
            ])));
  }
}
