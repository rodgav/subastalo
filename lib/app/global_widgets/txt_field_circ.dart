import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class TxtFieldCirWid extends StatelessWidget {
  final double width;
  final String hint;
  final Color color;
  final bool suffix;

  const TxtFieldCirWid(
      {Key? key,
      required this.width,
      required this.hint,
      required this.color,
      required this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: const EdgeInsets.symmetric(),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(100)),
        child: TextField(
          style: const TextStyle(fontStyle: FontStyle.italic),
          decoration: InputDecoration(
            suffixIcon: suffix
                ? const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ImageIcon(AssetImage('assets/icons/buscar.png'),
                        size: 24, color: ColorsUtils.blue3),
                  )
                : null,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(100.0)),
              borderSide: BorderSide(color: color, width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(100.0)),
              borderSide: BorderSide(color: color, width: 0),
            ),
          ),
        ));
  }
}
