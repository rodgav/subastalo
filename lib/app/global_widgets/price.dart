import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class PriceWid extends StatelessWidget {
  final double price;

  const PriceWid({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174.09,
      height: 52.63,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: ColorsUtils.orange1, width: 2.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Precio reserva',
              style: TextStyle(
                  color: ColorsUtils.orange1, fontSize: 8)),
          Text('US\$ ${price.toStringAsFixed(2)}',
              style: const TextStyle(
                  color: ColorsUtils.orange1, fontSize: 20,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
