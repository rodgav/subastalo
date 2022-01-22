import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
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
                  GetBuilder<MensajesLogic>(
                      id: 'messages',
                      builder: (_) {
                        final mensajes = _.messageModel?.messages;
                        return mensajes != null
                            ? mensajes.isNotEmpty
                                ? ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (__, index) {
                                      final mensaje = mensajes[index];
                                      return ListTile(
                                        leading: const Icon(
                                          Icons.email,
                                          color: ColorsUtils.red,
                                        ),
                                        title: RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: mensaje.idReceiver == 1
                                                  ? mensaje.sender.name
                                                  : mensaje.receiver.name,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w900)),
                                          TextSpan(
                                              text:
                                                  '   ${mensaje.createdAt.toString().substring(0, 10)}',
                                              style: const TextStyle(
                                                  fontSize: 10)),
                                        ])),
                                        subtitle: Text(mensaje.message),
                                        trailing: IconButton(
                                            onPressed: () => null,
                                            icon: const Icon(
                                              Icons.restore_from_trash_outlined,
                                              color: ColorsUtils.grey1,
                                            )),
                                      );
                                      /*SizedBox(
                                        width: width,
                                        child: Wrap(
                                          alignment: WrapAlignment.spaceBetween,
                                          runAlignment:
                                              WrapAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    text:  TextSpan(
                                                        children: [
                                                          TextSpan(
                                                              text:
                                                                  '${mensaje.receiver.name}\n',
                                                              style:const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          TextSpan(
                                                            text:
                                                                mensaje.message,
                                                            style:const TextStyle(
                                                                fontSize: 13),
                                                          )
                                                        ]),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      left: BorderSide(
                                                          color: ColorsUtils
                                                              .grey1
                                                              .withOpacity(
                                                                  0.5)))),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () => null,
                                                          icon: const Icon(
                                                            Icons
                                                                .restore_from_trash_outlined,
                                                            size: 12,
                                                            color: ColorsUtils
                                                                .grey1,
                                                          )),
                                                      const SizedBox(height: 5),
                                                       Text(
                                                        mensaje.createdAt.toString().substring(0,10),
                                                        style:const TextStyle(
                                                            color: ColorsUtils
                                                                .grey1,
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                  IconButton(
                                                      onPressed: () => null,
                                                      icon: const Icon(
                                                        Icons.arrow_forward_ios,
                                                        color:
                                                            ColorsUtils.grey2,
                                                      ))
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      );*/
                                    },
                                    separatorBuilder: (__, index) =>
                                        const Divider(),
                                    itemCount: mensajes.length)
                                : const NoDataWid()
                            : const LoadingWid();
                      }),
                ],
              )));
    });
  }
}
