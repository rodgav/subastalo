import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'vivo_logic.dart';

class VivoPage extends StatelessWidget {
  final logic = Get.find<VivoLogic>();

  VivoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: size.width,
            height: size.height * 0.1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.3,
                    0.5,
                    0.7
                  ],
                  colors: [
                    ColorsUtils.blueButt2,
                    ColorsUtils.blueButt1,
                    ColorsUtils.blueButt2
                  ]),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.2,
                  height: size.height * 0.1,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.05,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: 'SUBASTA Nº\n',
                                style: TextStyle(color: ColorsUtils.white)),
                            TextSpan(
                                text: '(34556)',
                                style: TextStyle(
                                    color: ColorsUtils.white,
                                    fontWeight: FontWeight.bold))
                          ])),
                        ),
                      ),
                      Icon(
                        Icons.signal_cellular_alt,
                        color: ColorsUtils.green,
                        size: size.height * 0.05,
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: 'NIVEL DE\n',
                                style: TextStyle(color: ColorsUtils.white)),
                            TextSpan(
                                text: 'CONECTIVIDAD',
                                style: TextStyle(color: ColorsUtils.white))
                          ])),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.5,
                  height: size.height * 0.1,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorsUtils.grey1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.15,
                        height: size.height * 0.1,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.person,
                              color: ColorsUtils.white,
                              size: size.height * 0.025,
                            ),
                            SizedBox(
                              width: size.width * 0.1,
                              height: size.height * 0.1,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: RichText(
                                    text: const TextSpan(children: [
                                  TextSpan(
                                      text: 'TU ALIAS\n',
                                      style:
                                          TextStyle(color: ColorsUtils.white)),
                                  TextSpan(
                                      text: '(GUILLE02)',
                                      style:
                                          TextStyle(color: ColorsUtils.white))
                                ]),overflow: TextOverflow.ellipsis,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.15,
                        height: size.height * 0.1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: ColorsUtils.white,
                              size: size.height * 0.025,
                            ),
                            SizedBox(
                              width: size.width * 0.1,
                              height: size.height * 0.1,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: RichText(
                                    text: const TextSpan(children: [
                                  TextSpan(
                                      text: 'TUS PROPUESTAS\n',
                                      style:
                                          TextStyle(color: ColorsUtils.white)),
                                  TextSpan(
                                      text: '(0)',
                                      style:
                                          TextStyle(color: ColorsUtils.white))
                                ])),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.15,
                        height: size.height * 0.1,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.person,
                              color: ColorsUtils.white,
                              size: size.height * 0.025,
                            ),
                            SizedBox(
                              width: size.width * 0.1,
                              height: size.height * 0.1,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: RichText(
                                    text: const TextSpan(children: [
                                  TextSpan(
                                      text: 'TUS FONDOS\n',
                                      style:
                                          TextStyle(color: ColorsUtils.white)),
                                  TextSpan(
                                      text: '(\$150)',
                                      style:
                                          TextStyle(color: ColorsUtils.white))
                                ])),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.height * 0.9,
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.1,
                        padding: const EdgeInsets.all(20),
                        child: const FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'VOLQUETE SCHACMAN F3000 DEL 2020 NUEVO',
                            style: TextStyle(
                                color: ColorsUtils.blue3,
                                fontWeight: FontWeight.w900),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.5,
                        height: size.height * 0.6,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: size.width * 0.5,
                                  height: size.height * 0.4,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/volquete.png'),
                                          fit: BoxFit.cover)),
                                ),
                                Positioned(
                                  right: 0,
                                  left: 0,
                                  bottom: 10,
                                  child: SizedBox(
                                    height: size.height * 0.1,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      padding: const EdgeInsets.all(0),
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (__, index) {
                                        if (index == 0) {
                                          return Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            width: size.height * 0.1,
                                            height: size.height * 0.1,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          );
                                        }
                                        return Container(
                                          width: size.height * 0.1,
                                          height: size.height * 0.1,
                                          margin:
                                              const EdgeInsets.only(left: 20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/volquete0.png'),
                                                  fit: BoxFit.cover)),
                                        );
                                      },
                                      itemCount: 10 + 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.2,
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  children: [
                                    DataTable(columns: const [
                                      DataColumn(label: Text('PUESTO')),
                                      DataColumn(label: Text('SEUDÓNIMO')),
                                      DataColumn(label: Text('PROPUESTAS')),
                                    ], rows: const [
                                      DataRow(cells: [
                                        DataCell(Text('1°')),
                                        DataCell(Text('Danilo01')),
                                        DataCell(Text('1'))
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('1°')),
                                        DataCell(Text('Danilo01')),
                                        DataCell(Text('1'))
                                      ]),
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xffF2F2F2)),
                        padding: const EdgeInsets.all(5),
                        width: size.width * 0.5,
                        height: size.height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: size.width * 0.22,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.22,
                                    height: size.height * 0.02,
                                    child: const FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'CONECTADOS',
                                        style:
                                            TextStyle(color: ColorsUtils.grey2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.22,
                                    height: size.height * 0.06,
                                    child: Center(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.person_outline,
                                            color: ColorsUtils.blue3,
                                            size: size.height * 0.04,
                                          ),
                                          SizedBox(
                                              height: size.height * 0.05,
                                              child: const FittedBox(
                                                  fit: BoxFit.contain,
                                                  child: Text(
                                                    '6',
                                                    style: TextStyle(
                                                        color:
                                                            ColorsUtils.blue3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ))),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.22,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.22,
                                    height: size.height * 0.02,
                                    child: const FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'PROPUESTAS',
                                        style:
                                            TextStyle(color: ColorsUtils.grey2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.22,
                                    height: size.height * 0.06,
                                    child: Center(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.person_outline,
                                            color: ColorsUtils.blue3,
                                            size: size.height * 0.04,
                                          ),
                                          SizedBox(
                                              height: size.height * 0.05,
                                              child: const FittedBox(
                                                  fit: BoxFit.contain,
                                                  child: Text(
                                                    '1',
                                                    style: TextStyle(
                                                        color:
                                                            ColorsUtils.blue3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ))),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xff2B2D2F)),
                        padding: const EdgeInsets.all(5),
                        width: size.width * 0.5,
                        height: size.height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: size.width * 0.22,
                              height: size.height * 0.03,
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Text('Precio base:',
                                    style: TextStyle(
                                        color: ColorsUtils.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              width: size.width * 0.22,
                              height: size.height * 0.08,
                              decoration: BoxDecoration(
                                  border: Border.all(color: ColorsUtils.grey1),
                                  borderRadius: BorderRadius.circular(5)),
                              padding: const EdgeInsets.all(2.5),
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Text('3,500',
                                    style: TextStyle(
                                        color: ColorsUtils.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.1,
                        padding: const EdgeInsets.all(20),
                        color: ColorsUtils.orange2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: size.width * 0.20,
                              height: size.height * 0.1,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: ColorsUtils.white,
                                    size: size.height * 0.035,
                                  ),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                    width: size.width * 0.08,
                                    height: size.height * 0.05,
                                    child: const FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text('Propuesta actual:',
                                          style: TextStyle(
                                              color: ColorsUtils.white),
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.08,
                              height: size.height * 0.1,
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'US\$ 3,550',
                                  style: TextStyle(
                                      color: ColorsUtils.white,
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.5,
                        color: ColorsUtils.blue3,
                        height: size.height * 0.7,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(web ? 50 : 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.5,
                                      height: size.height * 0.05,
                                      child: const FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          '¡Bienvenido al proceso en vivo!',
                                          style: TextStyle(
                                              color: ColorsUtils.white),
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.5,
                                      height: size.height * 0.05,
                                      child: const FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          'Recibiendo\nparticipantes',
                                          style: TextStyle(
                                              color: ColorsUtils.white,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.stream,
                                      size: size.height * 0.05,
                                      color: ColorsUtils.white,
                                    ),
                                    SizedBox(
                                      width: size.width * 0.5,
                                      height: size.height * 0.05,
                                      child: const FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          'Inicia en:',
                                          style: TextStyle(
                                              color: ColorsUtils.white),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                            color: ColorsUtils.orange2,
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.lock_clock,
                                          size: size.height * 0.05,
                                          color: ColorsUtils.white,
                                        )),
                                    Obx(() => SizedBox(
                                          width: size.width * 0.5,
                                          height: size.height * 0.05,
                                          child: FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text(
                                              '00:00:${logic.start}',
                                              style: const TextStyle(
                                                  color: ColorsUtils.white,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.1,
                              color: const Color(0xff2B2D2F),
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                        width: size.width * 0.5,
                                        height: 1,
                                        color: ColorsUtils.white),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: (size.height * 0.06),
                                        height: (size.height * 0.06),
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: const Color(0xff2B2D2F),
                                            border: Border.all(
                                                color: ColorsUtils.white),
                                            shape: BoxShape.circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                  color: ColorsUtils.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: (size.height * 0.06),
                                        height: (size.height * 0.06),
                                        padding: const EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xff2B2D2F),
                                            border: Border.all(
                                                color: ColorsUtils.white),
                                            shape: BoxShape.circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  color: ColorsUtils.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: (size.height * 0.06),
                                        height: (size.height * 0.06),
                                        padding: const EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xff2B2D2F),
                                            border: Border.all(
                                                color: ColorsUtils.white),
                                            shape: BoxShape.circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: Text(
                                              '3',
                                              style: TextStyle(
                                                  color: ColorsUtils.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Center(
                              child: SizedBox(
                                width: size.width * 0.5,
                                height: (size.height * 0.05) - 5,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                          width: size.width * 0.5,
                                          height: 2,
                                          color: ColorsUtils.grey1),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: (size.height * 0.04),
                                          height: (size.height * 0.04),
                                          padding: const EdgeInsets.all(2.5),
                                          decoration: const BoxDecoration(
                                              color: ColorsUtils.grey1,
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                    color: ColorsUtils.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: (size.height * 0.04),
                                          height: (size.height * 0.04),
                                          padding: const EdgeInsets.all(2.5),
                                          decoration: const BoxDecoration(
                                              color: ColorsUtils.grey1,
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: Text(
                                                '2',
                                                style: TextStyle(
                                                    color: ColorsUtils.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: (size.height * 0.04),
                                          height: (size.height * 0.04),
                                          padding: const EdgeInsets.all(2.5),
                                          decoration: const BoxDecoration(
                                              color: ColorsUtils.grey1,
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: Text(
                                                '3',
                                                style: TextStyle(
                                                    color: ColorsUtils.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: size.width * 0.5,
                              height: (size.height * 0.05) - 5,
                              child: const Center(
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Text(
                                    'Utiliza la barra de puntos como guía\npara enviar '
                                    'tus propuestas a tiempo.',
                                    style: TextStyle(color: ColorsUtils.grey1),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
