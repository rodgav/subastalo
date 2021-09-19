import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class Card1Wid extends StatelessWidget {
  final int views;

  const Card1Wid({Key? key, required this.views}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174.09,
      height: 172.14,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: const BoxDecoration(
          color: ColorsUtils.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                color: ColorsUtils.grey2, offset: Offset(0, 1.5), blurRadius: 7)
          ]),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.height,
              color: ColorsUtils.orange1,
            ),
            const Text(
              'Abierto para ofertas',
              style: TextStyle(fontSize: 10),
            ),
            const Divider(
              color: ColorsUtils.orange1,
            ),
            const Icon(
              Icons.remove_red_eye,
              color: ColorsUtils.orange1,
            ),
            Text(
              '$views vistas',
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
