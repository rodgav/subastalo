import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_widget/nueva_subasta_1.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_widget/nueva_subasta_2.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_widget/nueva_subasta_3.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_widget/nueva_subasta_4.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'nueva_subasta_logic.dart';

class NuevaSubastaPage extends StatelessWidget {
  final logic = Get.find<NuevaSubastaLogic>();

  NuevaSubastaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: size.width * 0.3,
              height: size.height * 0.1,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                        width: size.width * 0.3,
                        height: 2,
                        color: ColorsUtils.blue3),
                  ),
                  Center(
                    child: GetBuilder<NuevaSubastaLogic>(
                        id: 'selected',
                        builder: (_) {
                          final selected = _.selected;
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  child: Container(
                                    width: (size.height * 0.06),
                                    height: (size.height * 0.06),
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: selected == '1'
                                            ? ColorsUtils.blue3
                                            : ColorsUtils.white,
                                        border: Border.all(
                                            color: selected == '1'
                                                ? ColorsUtils.white
                                                : ColorsUtils.blue3),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                              color: selected == '1'
                                                  ? ColorsUtils.white
                                                  : ColorsUtils.blue3),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () => logic.changeSelected('1'),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  child: Container(
                                    width: (size.height * 0.06),
                                    height: (size.height * 0.06),
                                    padding: const EdgeInsets.all(2.5),
                                    decoration: BoxDecoration(
                                        color: selected == '2'
                                            ? ColorsUtils.blue3
                                            : ColorsUtils.white,
                                        border: Border.all(
                                            color: selected == '2'
                                                ? ColorsUtils.white
                                                : ColorsUtils.blue3),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                              color: selected == '2'
                                                  ? ColorsUtils.white
                                                  : ColorsUtils.blue3),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () => logic.changeSelected('2'),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  child: Container(
                                    width: (size.height * 0.06),
                                    height: (size.height * 0.06),
                                    padding: const EdgeInsets.all(2.5),
                                    decoration: BoxDecoration(
                                        color: selected == '3'
                                            ? ColorsUtils.blue3
                                            : ColorsUtils.white,
                                        border: Border.all(
                                            color: selected == '3'
                                                ? ColorsUtils.white
                                                : ColorsUtils.blue3),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                              color: selected == '3'
                                                  ? ColorsUtils.white
                                                  : ColorsUtils.blue3),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () => logic.changeSelected('3'),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  child: Container(
                                    width: (size.height * 0.06),
                                    height: (size.height * 0.06),
                                    padding: const EdgeInsets.all(2.5),
                                    decoration: BoxDecoration(
                                        color: selected == '4'
                                            ? ColorsUtils.blue3
                                            : ColorsUtils.white,
                                        border: Border.all(
                                            color: selected == '4'
                                                ? ColorsUtils.white
                                                : ColorsUtils.blue3),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Text(
                                          '4',
                                          style: TextStyle(
                                              color: selected == '4'
                                                  ? ColorsUtils.white
                                                  : ColorsUtils.blue3),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () => logic.changeSelected('4'),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: GetBuilder<NuevaSubastaLogic>(
                  id: 'selected',
                  builder: (_) {
                    final selected = _.selected;
                    return Center(
                      child: Container(
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: ColorsUtils.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: selected == '1'
                            ? NuevaSubasta1()
                            : selected == '2'
                                ? NuevaSubasta2()
                                : selected == '3'
                                    ? NuevaSubasta3()
                                    : NuevaSubasta4(),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
