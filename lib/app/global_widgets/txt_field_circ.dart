import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class TxtFieldCirWid extends StatelessWidget {
  final double width;
  final String hint;
  final Color color;
  final bool suffix;
  final TextEditingController editingController;
  final Function(String value)? onSubmitted;

  const TxtFieldCirWid(
      {Key? key,
      required this.width,
      required this.hint,
      required this.color,
      required this.suffix,
      required this.editingController,
      this.onSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: const EdgeInsets.symmetric(),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(100)),
        child: TextField(
          controller: editingController,
          style: const TextStyle(fontStyle: FontStyle.italic),
          decoration: InputDecoration(
            suffixIcon: suffix
                ? Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: const ImageIcon(
                          AssetImage('assets/icons/buscar.png'),
                          size: 24,
                          color: ColorsUtils.blue3),
                      onPressed: () {
                        if (onSubmitted != null) {
                          onSubmitted!(editingController.text);
                        }
                      },
                    ),
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
          onSubmitted: onSubmitted,
        ));
  }
}
