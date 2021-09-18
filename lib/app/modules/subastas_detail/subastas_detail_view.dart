import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/footer.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/modules/subastas_detail/widgets/card_info.dart';
import 'package:subastalo/app/modules/subastas_detail/widgets/card_name.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'subastas_detail_logic.dart';

class SubastasDetailPage extends StatelessWidget {
  const SubastasDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetBuilder<SubastasDetailLogic>(
        id: 'subasta',
        builder: (_) {
          final subasta = _.subasta;
          return subasta != null
              ? Scaffold(
                  body: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                          crossAxisAlignment: web
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                            Wrap(
                              children: [
                                CardNameSubDet(subasta: subasta),
                                CardInfoSubDet(subasta: subasta)
                              ],
                            ),
                            Wrap(
                              children: [
                                Container(
                                  width: web ? size.width * 0.5 : size.width,
                                  height: 651,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(subasta.imagePrimary),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: web ? size.width * 0.5 : size.width,
                                  height: 651,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.live_tv,
                                        color:
                                            ColorsUtils.grey1.withOpacity(0.2),
                                        size: 94,
                                      ),
                                      ButtonWid(
                                          width: 380,
                                          height: 100,
                                          color1: ColorsUtils.orange1,
                                          color2: ColorsUtils.orange2,
                                          textButt: 'Deseo participar',
                                          fontSize: 26,
                                          voidCallback: () => null),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Icon(
                                            Icons.home,
                                            size: 20,
                                            color: ColorsUtils.blue3,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Mínimo 2 participantes',
                                            style: TextStyle( color: ColorsUtils.blue3,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const FooterWid()
                          ])),
                )
              : const Scaffold(body: Center(child: LoadingWid()));
        });
  }
}
