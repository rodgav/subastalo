import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class NuevaSubasta2 extends StatelessWidget {
  final logic = Get.find<NuevaSubastaLogic>();

  NuevaSubasta2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Fotos del producto', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            SizedBox(
                width: size.width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.09,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorsUtils.grey1),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Icon(
                          Icons.image,
                          color: ColorsUtils.grey1,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.09,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorsUtils.grey1),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Icon(
                          Icons.image,
                          color: ColorsUtils.grey1,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.09,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorsUtils.grey1),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Icon(
                          Icons.image,
                          color: ColorsUtils.grey1,
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 10),
            const Text('URL del video', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(
                width: size.width * 0.3,
                hint: 'URL del video',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text(
              'Agregue youtube o vimeo url ej. https://www.youtube.comfwatch?v=video_id',
              textAlign: TextAlign.center
            ),
            const SizedBox(height: 10),
            const Text(
                'Estas funciones solo se aplican al tema moderno; si configura algún video, '
                'Ia imagen de la funcion se desactivara en Ia pagina de detalles del anuncio.',
                textAlign: TextAlign.center),
            const SizedBox(height: 40),
            Center(
              child: ButtonWid(
                  width: size.width * 0.15,
                  height: 50,
                  color1: ColorsUtils.blueButt1,
                  color2: ColorsUtils.blueButt2,
                  textButt: 'Siguiente',
                  voidCallback: () => logic.changeSelected('3')),
            ),
          ],
        )),
      ),
    );
  }
}
