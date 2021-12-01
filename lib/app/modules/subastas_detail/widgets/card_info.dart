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
        height: 140,
        color: subasta.type == 'Vivo' ? ColorsUtils.orange2 : ColorsUtils.blue3,
        padding:const EdgeInsets.all( 10),
        child: Container(
          padding:const  EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: ColorsUtils.white,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: web ? size.width * 0.31 : size.width * 0.82,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: ColorsUtils.blue3,
                          size: size.width * 0.03,
                        ),
                        SizedBox(
                          width: web?10:5,
                        ),
                        SizedBox( width: web ? size.width * 0.15 : size.width * 0.72,
                          child: Align(alignment: Alignment.centerLeft,
                            child: FittedBox(fit: BoxFit.scaleDown,
                              child:  RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: subasta.type == 'Vivo'
                                            ? 'Inician\n'
                                            : 'Cierra\n',
                                        style: const TextStyle(
                                            color: ColorsUtils.blue3, fontSize: 20)),
                                    TextSpan(
                                      text: '${subasta.date}',
                                      style: const TextStyle(
                                          color: ColorsUtils.blue3,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                                ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: web ? size.width * 0.3 : size.width * 0.8,
                      padding: EdgeInsets.symmetric(
                          horizontal: web?10:5, vertical: web?5:2.5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.home,
                                color: subasta.type == 'Vivo'
                                    ? ColorsUtils.orange2
                                    : ColorsUtils.blue3,
                                size:  size.width*0.02 ,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width:
                                    web ? size.width * 0.1 : size.width * 0.3,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      subasta.type == 'Vivo'
                                          ? 'Abierto para ofertas'
                                          : 'Abierto para negociaciones',
                                      style: TextStyle(
                                          color: subasta.type == 'Vivo'
                                              ? ColorsUtils.orange2
                                              : ColorsUtils.blue3,
                                          fontSize: 14),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: subasta.type == 'Vivo'
                                    ? ColorsUtils.orange2
                                    : ColorsUtils.blue3,
                                size:  size.width*0.02 ,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width:
                                    web ? size.width * 0.1 : size.width * 0.3,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '${subasta.views} Visitas',
                                      style: TextStyle(
                                          color: subasta.type == 'Vivo'
                                              ? ColorsUtils.orange2
                                              : ColorsUtils.blue3),
                                    ),
                                  ),
                                ),
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
                width:  size.width * 0.08,
                decoration: const BoxDecoration(
                    color: ColorsUtils.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)]),
                child: Container(
                  margin: EdgeInsets.all(web ? 10 : 5),
                  child: Icon(
                    Icons.home,
                    color: ColorsUtils.orange2,
                    size: size.width * 0.05,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
