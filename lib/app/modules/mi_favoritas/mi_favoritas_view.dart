import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/mi_favoritas/mi_favoritas_widget/item_mi_favorita.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'mi_favoritas_logic.dart';

class MiFavoritasPage extends StatelessWidget {
  final logic = Get.find<MiFavoritasLogic>();

  MiFavoritasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(builder: (__, constraints) {
      final width = constraints.maxWidth;
      return SingleChildScrollView(
          child: Container(
              padding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const[
                          Text('MIS SUBASTAS FAVORITAS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('Aquí podrás gestionar tus subastas',
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      const ImageIcon(
                        AssetImage('assets/icons/like.png'),
                        color: ColorsUtils.orange1,
                        size: 45,
                      )
                    ],
                  ),
                  const Divider(height: 20),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (___, index) => ItemMiFavorita(
                      width: width,
                      voidCallback: () => null,
                    ),
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                ],
              )));
    });
  }
}
