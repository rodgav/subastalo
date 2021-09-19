import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/utils/colors_utils.dart';

class CardInfoSubDet extends StatelessWidget {
  final Subasta subasta;

  const CardInfoSubDet({Key? key, required this.subasta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Container(
        width: web ? size.width * 0.5 : size.width,
        color: subasta.type == 'Vivo' ? ColorsUtils.orange2 : ColorsUtils.blue3,
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 30),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: ColorsUtils.white,
              borderRadius: BorderRadius.circular(15)),
          child: Wrap(
            runAlignment:
                web ? WrapAlignment.spaceBetween : WrapAlignment.center,
            alignment: web ? WrapAlignment.spaceBetween : WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 20,
            children: [
              SizedBox(
                width: web ? 420 : double.infinity,
                child: Column(
                  crossAxisAlignment: web
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: ColorsUtils.blue3,
                          size: 36,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(subasta.type == 'Vivo' ? 'Inicia' : 'Cierra',
                                style: const TextStyle(
                                    color: ColorsUtils.blue3, fontSize: 20)),
                            Text('${subasta.date}',
                                style: const TextStyle(
                                    color: ColorsUtils.blue3,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      child: Wrap(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.home,
                                color: subasta.type == 'Vivo'
                                    ? ColorsUtils.orange2
                                    : ColorsUtils.blue3,
                                size: 33,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                subasta.type == 'Vivo'
                                    ? 'Abierto para ofertas'
                                    : 'Abierto para negociaciones',
                                style: TextStyle(
                                    color: subasta.type == 'Vivo'
                                        ? ColorsUtils.orange2
                                        : ColorsUtils.blue3),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: subasta.type == 'Vivo'
                                    ? ColorsUtils.orange2
                                    : ColorsUtils.blue3,
                                size: 33,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${subasta.views} Visitas',
                                style: TextStyle(
                                    color: subasta.type == 'Vivo'
                                        ? ColorsUtils.orange2
                                        : ColorsUtils.blue3),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 114,
                height: 114,
                decoration: const BoxDecoration(
                    color: ColorsUtils.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)]),
                child: const Icon(
                  Icons.home,
                  color: ColorsUtils.orange2,
                  size: 46,
                ),
              )
            ],
          ),
        ));
  }
}
