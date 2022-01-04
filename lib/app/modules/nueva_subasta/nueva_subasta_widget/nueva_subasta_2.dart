import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class NuevaSubasta2 extends StatelessWidget {
  final logic = Get.find<NuevaSubastaLogic>();

  NuevaSubasta2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(key: logic.formKey2,
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Fotos del producto', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            SizedBox(
                width: size.width,
                child: GetBuilder<NuevaSubastaLogic>(
                    id: 'images',
                    builder: (_) {
                      final files = _.files;
                      return SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (__, index) {
                            if (index == 0) {
                              return GestureDetector(
                                child: Container(
                                  margin:const EdgeInsets.only(left: 5),
                                  width: web
                                      ? size.width * 0.09
                                      : size.width * 0.25,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: ColorsUtils.grey1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.image,
                                      color: ColorsUtils.grey1,
                                    ),
                                  ),
                                ),
                                onTap: _.filePicker,
                              );
                            } else {
                              return Container(margin:const EdgeInsets.only(left: 10),
                                width:
                                    web ? size.width * 0.09 : size.width * 0.25,
                                height: 100, decoration: BoxDecoration(
                                  border:
                                  Border.all(color: ColorsUtils.grey1),
                                  borderRadius: BorderRadius.circular(5)),
                                child: Image.memory(files[index-1].bytes!,fit: BoxFit.cover,),
                              );
                            }
                          },
                          itemCount: files.length + 1,
                        ),
                      );
                    })),
            const SizedBox(height: 10),
            const Text('URL del video', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(
                controller: logic.urlVideoCtrl,
                validator: isNotEmpty,
                width: web ? size.width * 0.3 : size.width,
                hint: 'URL del video',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text(
                'Agregue youtube o vimeo url ej. https://www.youtube.comfwatch?v=video_id',
                textAlign: TextAlign.center),
            const SizedBox(height: 10),
            const Text(
                'Estas funciones solo se aplican al tema moderno; si configura algún video, '
                'Ia imagen de la funcion se desactivara en Ia pagina de detalles del anuncio.',
                textAlign: TextAlign.center),
            const SizedBox(height: 40),
            Center(
              child: ButtonWid(
                  width: web ? size.width * 0.15 : size.width * 0.5,
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
