import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_icon_rigth_widget.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'monetizacion_logic.dart';

class MonetizacionPage extends StatelessWidget {
  final logic = Get.find<MonetizacionLogic>();

  MonetizacionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        return SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  alignment: web?WrapAlignment.spaceBetween:WrapAlignment.center,
                  runAlignment: web?WrapAlignment.spaceBetween:WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,runSpacing: 10,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('MONETIZACIÓN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Aquí podrás monetizar tu sitio web',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    ButtonIconRWid(
                        width: 200,
                        height: 40,
                        color1: ColorsUtils.blue3,
                        color2: ColorsUtils.blue3,
                        assetIcon: 'assets/icons/buscar.png',
                        textButt: 'Añadari sección',
                        voidCallback: () => null)
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(height: 20),
                const Text(
                  'Puede monetizar su sitio web con adsens, coloque su sitio '
                  'web en  la parte de código marcado de verde, en el código '
                  'de bloqueo de ubicación debajo, el anuncio aparecerá en '
                  'esa ubicación',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Seleccionar página',
                          style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: ColorsUtils.grey1)),
                        width: 112,
                        child: DropdownButton<String>(
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          hint: const Text('Paginas'),
                          isExpanded: true,
                          items: const [
                            DropdownMenuItem<String>(child: Text('Inicio'))
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text('Pegar código',
                          style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 5),
                      TxtFieldBor(
                          width: width,
                          hint:
                              '''<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- TestCSP -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-8618780985613063"
     data-ad-slot="5484345690"
     data-ad-format="auto"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>''',
                          maxLines: 10,
                          icon: null,
                          enabledBorder: ColorsUtils.grey1,
                          focusedBorder: ColorsUtils.blue3),
                      const SizedBox(height: 40),
                      ButtonWid(
                          width: 186,
                          height: 40,
                          color1: ColorsUtils.grey1,
                          color2: ColorsUtils.grey1,
                          textButt: 'Guardar',
                          voidCallback: () => null),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
