import 'package:flutter/material.dart';

class TxtFieldBor extends StatelessWidget {
  final double width;
  final String hint;
  final int maxLines;
  final Icon? icon;
  final Color enabledBorder;
  final Color focusedBorder;

  const TxtFieldBor(
      {Key? key,
      required this.width,
      required this.hint,
      this.maxLines = 1,
      required this.icon,
      required this.enabledBorder,
      required this.focusedBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: TextFormField(
          maxLines: maxLines,
          decoration: InputDecoration(
            suffixIcon: icon,
            contentPadding: EdgeInsets.symmetric(
                vertical: maxLines == 1 ? 0 : 10, horizontal: 20),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: enabledBorder, width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: focusedBorder, width: 0),
            ),
          ),
        ));
  }
}
