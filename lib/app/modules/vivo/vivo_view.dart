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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: size.width,
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
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Wrap(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'SUBASTA Nº',
                            style: TextStyle(
                                color: ColorsUtils.white, fontSize: 16),
                          ),
                          Text(
                            '34556',
                            style: TextStyle(
                                color: ColorsUtils.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(width: 15),
                      const Icon(
                        Icons.signal_cellular_alt,
                        color: ColorsUtils.green,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'NIVEL DE',
                            style: TextStyle(
                                color: ColorsUtils.white, fontSize: 16),
                          ),
                          Text(
                            'CONECTIVIDAD',
                            style: TextStyle(
                                color: ColorsUtils.white, fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorsUtils.grey1)),
                    child: Wrap(
                      runSpacing: 20,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.person,
                              color: ColorsUtils.white,
                              size: 30,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'TU ALIAS',
                                  style: TextStyle(
                                      color: ColorsUtils.white, fontSize: 18),
                                ),
                                Text(
                                  '(GUILLE02)',
                                  style: TextStyle(
                                      color: ColorsUtils.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(width: 35),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.person,
                              color: ColorsUtils.white,
                              size: 30,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'TUS PROPUESTAS',
                                  style: TextStyle(
                                      color: ColorsUtils.white, fontSize: 18),
                                ),
                                Text(
                                  '(0)',
                                  style: TextStyle(
                                      color: ColorsUtils.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(width: 35),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.person,
                              color: ColorsUtils.white,
                              size: 30,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'TUS FONDOS',
                                  style: TextStyle(
                                      color: ColorsUtils.white, fontSize: 18),
                                ),
                                Text(
                                  '(\$150)',
                                  style: TextStyle(
                                      color: ColorsUtils.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: size.width,
              child: Wrap(
                children: [
                  SizedBox(
                    width: web ? size.width / 2 : size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: web ? size.width / 2 : size.width,
                          height: 150,
                          padding: const EdgeInsets.all(20),
                          child: const Center(
                            child: Text(
                              'VOLQUETE SCHACMAN F3000 DEL 2020 NUEVO',
                              style: TextStyle(
                                  color: ColorsUtils.blue3,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: web ? size.width / 2 : size.width,
                          height: 897,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: web ? size.width / 2 : size.width,
                                    height: 520,
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
                                      height: 100,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        padding: const EdgeInsets.all(0),
                                        physics: const BouncingScrollPhysics(),
                                        itemBuilder: (__, index) {
                                          if (index == 0) {
                                            return Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            );
                                          }
                                          return Container(
                                            width: 100,
                                            height: 100,
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
                              SingleChildScrollView(
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
                            ],
                          ),
                        ),
                        Container(
                          decoration:
                              const BoxDecoration(color: Color(0xffF2F2F2)),
                          padding: const EdgeInsets.all(20),
                          width: web ? size.width / 2 : size.width,
                          child: Wrap(
                            alignment: WrapAlignment.spaceAround,
                            runAlignment: WrapAlignment.spaceAround,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    'CONECTADOS',
                                    style: TextStyle(
                                        color: ColorsUtils.grey2, fontSize: 24),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(
                                        Icons.person_outline,
                                        color: ColorsUtils.blue3,
                                        size: 36,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '6',
                                        style: TextStyle(
                                            color: ColorsUtils.blue3,
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'PROPUESTAS',
                                    style: TextStyle(
                                        color: ColorsUtils.grey2, fontSize: 24),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(
                                        Icons.person_outline,
                                        color: ColorsUtils.blue3,
                                        size: 36,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            color: ColorsUtils.blue3,
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration:
                              const BoxDecoration(color: Color(0xff2B2D2F)),
                          padding: const EdgeInsets.all(20),
                          width: web ? size.width / 2 : size.width,
                          child: Wrap(
                            alignment: WrapAlignment.spaceAround,
                            runAlignment: WrapAlignment.spaceAround,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Text('Precio base:',
                                  style: TextStyle(
                                      color: ColorsUtils.white,
                                      fontSize: 31,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: ColorsUtils.grey1),
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: web ? 40 : 20),
                                child: const Text('3,500',
                                    style: TextStyle(
                                        color: ColorsUtils.white,
                                        fontSize: 55,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: web ? size.width / 2 : size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: web ? size.width / 2 : size.width,
                          height: 150,
                          padding: const EdgeInsets.all(20),
                          color: ColorsUtils.orange2,
                          child: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            runAlignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: ColorsUtils.white,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Propuesta actual:',
                                    style: TextStyle(
                                        color: ColorsUtils.white, fontSize: 30),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              const Text(
                                'US\$ 3,550',
                                style: TextStyle(
                                    color: ColorsUtils.white,
                                    fontSize: 55,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: web ? size.width / 2 : size.width,
                          color: ColorsUtils.blue3,
                          height: 897,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(web ? 50 : 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        '¡Bienvenido al proceso en vivo!',
                                        style: TextStyle(
                                            color: ColorsUtils.white,
                                            fontSize: 30),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 20),
                                      const Text(
                                        'Recibiendo\nparticipantes',
                                        style: TextStyle(
                                            color: ColorsUtils.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 20),
                                      const Icon(
                                        Icons.stream,
                                        size: 52,
                                        color: ColorsUtils.white,
                                      ),
                                      const SizedBox(height: 20),
                                      const Text(
                                        'Inicia en:',
                                        style: TextStyle(
                                            color: ColorsUtils.white,
                                            fontSize: 30),
                                        textAlign: TextAlign.center,
                                      ),
                                      Container(
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                              color: ColorsUtils.orange2,
                                              shape: BoxShape.circle),
                                          child: const Icon(
                                            Icons.lock_clock,
                                            size: 72,
                                            color: ColorsUtils.white,
                                          )),
                                      Obx(
                                        () => Text(
                                          '00:00:${logic.start}',
                                          style: const TextStyle(
                                              color: ColorsUtils.white,
                                              fontSize: 38,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 114,
                                color: const Color(0xff2B2D2F),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                          width:
                                              web ? size.width / 2 : size.width,
                                          height: 2,
                                          color: ColorsUtils.white),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 74,
                                          height: 74,
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: const Color(0xff2B2D2F),
                                              border: Border.all(
                                                  color: ColorsUtils.white,
                                                  width: 2.5),
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                  color: ColorsUtils.white,
                                                  fontSize: 40),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 74,
                                          height: 74,
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: const Color(0xff2B2D2F),
                                              border: Border.all(
                                                  color: ColorsUtils.white,
                                                  width: 2.5),
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  color: ColorsUtils.white,
                                                  fontSize: 40),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 74,
                                          height: 74,
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: const Color(0xff2B2D2F),
                                              border: Border.all(
                                                  color: ColorsUtils.white,
                                                  width: 2.5),
                                              shape: BoxShape.circle),
                                          child: const Center(
                                            child: Text(
                                              '3',
                                              style: TextStyle(
                                                  color: ColorsUtils.white,
                                                  fontSize: 40),
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
                        SizedBox(height: web ? 50 : 20),
                        Center(
                          child: SizedBox(
                            width: web ? (size.width / 2) / 2 : size.width / 2,
                            height: 50,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                      width: web
                                          ? (size.width / 2) / 2
                                          : size.width / 2,
                                      height: 2,
                                      color: ColorsUtils.grey1),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          color: ColorsUtils.grey1,
                                          shape: BoxShape.circle),
                                      child: const Center(
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                              color: ColorsUtils.white),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          color: ColorsUtils.grey1,
                                          shape: BoxShape.circle),
                                      child: const Center(
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                              color: ColorsUtils.white),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          color: ColorsUtils.grey1,
                                          shape: BoxShape.circle),
                                      child: const Center(
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                              color: ColorsUtils.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: web ? 50 : 20),
                        const Center(
                          child: Text(
                            'Utiliza la barra de puntos como guía\npara enviar '
                            'tus propuestas a tiempo.',
                            style: TextStyle(
                                color: ColorsUtils.grey1, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
