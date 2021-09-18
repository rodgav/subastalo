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
      color: ColorsUtils.orange2,
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 30),
      child:
          Container(
            height: 187,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: ColorsUtils.white,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: ColorsUtils.blue3,
                          size: 36,
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Cierra',
                                style: TextStyle(
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
                    Container(
                      width: 420,
                      height: 59,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.home,
                                color: ColorsUtils.orange2,
                                size: 33,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Abierto para ofertas',
                                style: TextStyle(color: ColorsUtils.orange2),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.remove_red_eye,
                                color: ColorsUtils.orange2,
                                size: 33,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${subasta.views} Visitas',
                                style:
                                    const TextStyle(color: ColorsUtils.orange2),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 114,
                  height: 114,
                  decoration: const BoxDecoration(
                      color: ColorsUtils.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 7)
                      ]),
                  child: const Icon(
                    Icons.home,
                    color: ColorsUtils.orange2,
                    size: 46,
                  ),
                )
              ],
            ),
          )

    );
  }
}
