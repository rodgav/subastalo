import 'package:flutter/material.dart';

class TxtFieldBor extends StatelessWidget {
  final double width;
  final String hint;
  final Icon? icon;
  final Color enabledBorder;
  final Color focusedBorder;

  const TxtFieldBor(
      {Key? key,
      required this.width,
      required this.hint,
      required this.icon,
      required this.enabledBorder,
      required this.focusedBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: icon,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
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
