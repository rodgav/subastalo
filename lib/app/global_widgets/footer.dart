import 'package:flutter/material.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/utils/colors_utils.dart';

class FooterWid extends StatelessWidget {
   FooterWid({Key? key}) : super(key: key);
  final name = TextEditingController();
  final phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: size.width,
            height: 89,
            color: const Color(0xff1C1C1C),
            child: Center(
                child: Image.asset(
              'assets/images/logo.png',
              width: 161,
              height: 37,
            ))),
        web
            ? Container(
                width: size.width,
                padding: EdgeInsets.symmetric(vertical: web ? 40 : 20),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [ColorsUtils.blue3, ColorsUtils.blue4],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.spaceAround,
                  runAlignment: WrapAlignment.spaceAround,
                  runSpacing: 20,
                  children: [
                    Column(
                      crossAxisAlignment: web
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'SUBASTAS',
                          style: TextStyle(
                              color: ColorsUtils.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        Row(mainAxisSize: MainAxisSize.min, children: const [
                          ImageIcon(
                            AssetImage('assets/icons/imagen2.png'),
                            color: ColorsUtils.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Negociables | 448',
                            style: TextStyle(
                                fontSize: 14, color: ColorsUtils.white),
                          )
                        ]),
                        const SizedBox(height: 20),
                        Row(mainAxisSize: MainAxisSize.min, children: const [
                          ImageIcon(
                            AssetImage('assets/icons/imagen2.png'),
                            color: ColorsUtils.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Puja Virtual | 248',
                            style: TextStyle(
                                fontSize: 14, color: ColorsUtils.white),
                          )
                        ]),
                        const SizedBox(height: 20),
                        Row(mainAxisSize: MainAxisSize.min, children: const [
                          ImageIcon(
                            AssetImage('assets/icons/imagen2.png'),
                            color: ColorsUtils.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'En vivo ahora | 03',
                            style: TextStyle(
                                fontSize: 14, color: ColorsUtils.white),
                          )
                        ]),
                        SizedBox(height: web ? 80 : 40),
                        Row(mainAxisSize: MainAxisSize.min, children: const [
                          ImageIcon(
                            AssetImage('assets/icons/calidad.png'),
                            color: ColorsUtils.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Calidad & Garantia',
                            style: TextStyle(
                                fontSize: 14, color: ColorsUtils.white),
                          )
                        ])
                      ],
                    ),
                    web
                        ? Container(
                            height: 256,
                            width: 1,
                            color: ColorsUtils.white,
                          )
                        : const Divider(
                            color: ColorsUtils.white,
                            height: 2,
                          ),
                    Column(
                      crossAxisAlignment: web
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'COMUNIDAD',
                          style: TextStyle(
                              color: ColorsUtils.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Blog SUBASTAS',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Otra comunidad -  descartar',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        SizedBox(height: web ? 80 : 40),
                        Row(mainAxisSize: MainAxisSize.min, children: const [
                          ImageIcon(
                            AssetImage('assets/icons/facebook.png'),
                            color: ColorsUtils.white,
                            size: 47,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/instagram.png'),
                            color: ColorsUtils.white,
                            size: 47,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/linkedin.png'),
                            color: ColorsUtils.white,
                            size: 47,
                          ),
                        ])
                      ],
                    ),
                    web
                        ? Container(
                            height: 256,
                            width: 1,
                            color: ColorsUtils.white,
                          )
                        : const Divider(
                            color: ColorsUtils.white,
                            height: 2,
                          ),
                    Column(
                      crossAxisAlignment: web
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'ASISTENCIA TÉCNICA',
                          style: TextStyle(
                              color: ColorsUtils.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Centro de ayuda',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Asistencia para empresas',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        SizedBox(height: web ? 80 : 40),
                        const Text('Perú',
                            style: TextStyle(
                                fontSize: 20,
                                color: ColorsUtils.white,
                                fontWeight: FontWeight.bold)),
                        const Text('0800 33333',
                            style: TextStyle(
                                fontSize: 20,
                                color: ColorsUtils.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    web
                        ? Container(
                            height: 256,
                            width: 1,
                            color: ColorsUtils.white,
                          )
                        : const Divider(
                            color: ColorsUtils.white,
                            height: 2,
                          ),
                    Column(
                      crossAxisAlignment: web
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'SUBASTALO PERÚ',
                          style: TextStyle(
                              color: ColorsUtils.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Responsabilidad',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Corporativa',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Centro de confianza',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Eventos & Empleo',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Diversidad e inclusión',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Dirección de la empresa',
                          style:
                              TextStyle(fontSize: 14, color: ColorsUtils.white),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorsUtils.white),
                              borderRadius: BorderRadius.circular(7)),
                          child: const Text(
                            'Av. Los conquistadores 918 Of. 501  |  San Isidro',
                            style: TextStyle(
                                color: ColorsUtils.white, fontSize: 11),
                          ),
                        )
                      ],
                    ),
                    web
                        ? Container(
                            height: 256,
                            width: 1,
                            color: ColorsUtils.white,
                          )
                        : const Divider(
                            color: ColorsUtils.white,
                            height: 2,
                          ),
                    Column(
                      crossAxisAlignment: web
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: ColorsUtils.white, width: 1))),
                          child: const Text(
                            'TE CONTACTAMOS',
                            style: TextStyle(
                                color: ColorsUtils.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TxtFieldCirWid(
                            width: web ? 320 : 300,
                            hint: 'Nombre completo',
                            color: ColorsUtils.white,
                            suffix: false,editingController: name),
                        const SizedBox(height: 20),
                        TxtFieldCirWid(
                            width: web ? 320 : 300,
                            hint: 'Número de teléfono o celular',
                            color: ColorsUtils.white,
                            suffix: false,editingController: phone),
                        const SizedBox(height: 20),
                        ButtonWid(
                            width: web ? 320 : 300,
                            height: 55,
                            color1: ColorsUtils.blueButt2,
                            color2: ColorsUtils.blueButt2,
                            textButt: 'ENVIAR DATOS',
                            voidCallback: () {
                              //enviar datos
                            })
                      ],
                    ),
                  ],
                ),
              )
            : ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {},
                children: [
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('asdasd'),
                    );
                  }, body: Column(
                    crossAxisAlignment: web
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'ASISTENCIA TÉCNICA',
                        style: TextStyle(
                            color: ColorsUtils.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Centro de ayuda',
                        style:
                        TextStyle(fontSize: 14, color: ColorsUtils.white),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Asistencia para empresas',
                        style:
                        TextStyle(fontSize: 14, color: ColorsUtils.white),
                      ),
                      SizedBox(height: web ? 80 : 40),
                      const Text('Perú',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsUtils.white,
                              fontWeight: FontWeight.bold)),
                      const Text('0800 33333',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsUtils.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('asdasd'),
                    );
                  }, body: Column(
                    crossAxisAlignment: web
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'ASISTENCIA TÉCNICA',
                        style: TextStyle(
                            color: ColorsUtils.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Centro de ayuda',
                        style:
                        TextStyle(fontSize: 14, color: ColorsUtils.white),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Asistencia para empresas',
                        style:
                        TextStyle(fontSize: 14, color: ColorsUtils.white),
                      ),
                      SizedBox(height: web ? 80 : 40),
                      const Text('Perú',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsUtils.white,
                              fontWeight: FontWeight.bold)),
                      const Text('0800 33333',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsUtils.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('asdasd'),
                    );
                  }, body: Column(
                    crossAxisAlignment: web
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'ASISTENCIA TÉCNICA',
                        style: TextStyle(
                            color: ColorsUtils.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Centro de ayuda',
                        style:
                        TextStyle(fontSize: 14, color: ColorsUtils.white),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Asistencia para empresas',
                        style:
                        TextStyle(fontSize: 14, color: ColorsUtils.white),
                      ),
                      SizedBox(height: web ? 80 : 40),
                      const Text('Perú',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsUtils.white,
                              fontWeight: FontWeight.bold)),
                      const Text('0800 33333',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsUtils.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('asdasd'),
                    );
                  }, body: Column(
                    crossAxisAlignment: web
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'ASISTENCIA TÉCNICA',
                        style: TextStyle(
                            color: ColorsUtils.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Centro de ayuda',
                        style:
                        TextStyle(fontSize: 14, color: ColorsUtils.white),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Asistencia para empresas',
                        style:
                        TextStyle(fontSize: 14, color: ColorsUtils.white),
                      ),
                      SizedBox(height: web ? 80 : 40),
                      const Text('Perú',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsUtils.white,
                              fontWeight: FontWeight.bold)),
                      const Text('0800 33333',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsUtils.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
                ],
              ),
      ],
    );
  }
}
