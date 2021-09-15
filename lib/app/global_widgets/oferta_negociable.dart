import 'package:flutter/material.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

class OfertaNegociableWid extends StatelessWidget {
  const OfertaNegociableWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.web,
              color: Colors.red,
              size: 78,
            ),
            SizedBox(width: 10),
            Text(
              'OFERTAS \nNEGOCIABLES',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 600,
          height: 376,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: ColorsUtils.white,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Miles de productos',
                      style: TextStyle(
                          color: ColorsUtils.blue3, fontSize: 28),
                    ),
                    Text(
                      'Accede a todas las ofertas con precios negociables',
                      style: TextStyle(
                          color: ColorsUtils.orange2, fontSize: 28),
                    ),
                    Text(
                      'Texto de ayuda',
                      style: TextStyle(
                          color: ColorsUtils.blue3, fontSize: 28),
                    ),
                    Text(
                      'Categoria 1, Categoria 2, Categoria 3, '
                          'Categoria 4, Categoria 5, Categoria 6 ',
                      style: TextStyle(
                          color: ColorsUtils.blue3, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.store,
                    size: 167,
                  ),
                  ButtonWid(
                      width: 250,
                      height: 50,
                      color1: ColorsUtils.orange1,
                      color2: ColorsUtils.orange2,
                      textButt: 'VISITAR')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
