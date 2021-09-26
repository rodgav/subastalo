import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/mi_subasta/mi_subasta_widget/item_mi_subasta.dart';

import 'mi_subasta_logic.dart';

class MiSubastaPage extends StatelessWidget {

 const MiSubastaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final bool web = size.width > 800;
    return GetBuilder<MiSubastaLogic>(builder: (_) {
      return LayoutBuilder(builder: (__, constraints) {
        final width = constraints.maxWidth;
        return SingleChildScrollView(
            child: Container(
                padding:
                EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('MIS SUBASTAS',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text('Aquí podrás gestionar tus subastas',
                        style: TextStyle(fontSize: 12)),
                    const Divider(height: 20),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (___, index) =>
                          ItemMiSubasta(
                            width: width,
                            voidCallback: () => _.toMiSubastaDetail('sub1'),
                          ),
                      itemCount: 10,
                      separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                    ),
                  ],
                )));
      });
    });
  }
}
