import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class PriceWid extends StatelessWidget {
  final double width;
  final double price;

  const PriceWid({Key? key, required this.width, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ColorsUtils.orange1, width: 2.0)),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              const TextSpan(
                  text: 'Precio reserva\n',
                  style: TextStyle(color: ColorsUtils.orange1, fontSize: 8)),
              TextSpan(
                  text: 'US\$ ${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                      color: ColorsUtils.orange1,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
        ));
  }
}
