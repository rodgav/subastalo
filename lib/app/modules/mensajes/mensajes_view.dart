import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'mensajes_logic.dart';

class MensajesPage extends StatelessWidget {
  final logic = Get.find<MensajesLogic>();

  MensajesPage({Key? key}) : super(key: key);

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
                  const Text('MENSAJES',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const Text('Aquí podrás gestionar tus mensajes',
                      style: TextStyle(fontSize: 12)),
                  const Divider(height: 20),
                  const SizedBox(height: 20),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (__, index) => SizedBox(
                        width: width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.email,
                                  size: 14,
                                  color: ColorsUtils.red,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: RichText(
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    text:const TextSpan(children: [
                                      TextSpan(
                                          text: 'Albert Herrera\n',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text:
                                        'Resumen del contenido o mensaje recibido...',
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: ColorsUtils.grey1
                                              .withOpacity(0.5)))),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                          onPressed: () => null,
                                          icon: const Icon(
                                            Icons.restore_from_trash_outlined,
                                            size: 12,
                                            color: ColorsUtils.grey1,
                                          )),
                                      const SizedBox(height: 5),
                                      const Text(
                                        '31 Oct',
                                        style: TextStyle(
                                            color: ColorsUtils.grey1,
                                            fontSize: 10),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () => null,
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorsUtils.grey2,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      separatorBuilder: (__, index) => const Divider(),
                      itemCount: 4),
                ],
              )));
    });
  }
}
