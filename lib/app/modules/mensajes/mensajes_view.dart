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
                                        onTap: ()=> _.toMensajeDetail(mensaje.id),
                                      );
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
