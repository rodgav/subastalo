import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class Like extends StatelessWidget {
  final double? top;
  final double? right;
  final double? left;
  final double? bottom;

  const Like({
    Key? key,
    this.top,
    this.right,
    this.left,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: top,
          bottom: bottom,
          right: right,
          left: left,
          child: Container(
            padding:const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: ColorsUtils.white, shape: BoxShape.circle),
            child: const ImageIcon(
              AssetImage('assets/icons/corazon3.png'),
              size: 24,
              color: ColorsUtils.orange1,
            ),
          ),
        )
      ],
    );
  }
}
