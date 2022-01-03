import 'package:flutter/material.dart';

class TxtFieldBor extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validator;
  final double width;
  final String hint;
  final int maxLines;
  final Icon? icon;
  final Color enabledBorder;
  final Color focusedBorder;
  final bool obscureText;

  const TxtFieldBor(
      {Key? key,
      required this.controller,
      required this.validator,
      required this.width,
      required this.hint,
      this.maxLines = 1,
      required this.icon,
      required this.enabledBorder,
      required this.focusedBorder,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: TextFormField(
          obscureText: obscureText,
          controller: controller,
          validator: validator,
          maxLines: maxLines,
          decoration: InputDecoration(
            suffixIcon: icon,
            contentPadding: EdgeInsets.symmetric(
                vertical: maxLines == 1 ? 0 : 10, horizontal: 20),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: enabledBorder),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: focusedBorder),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.red),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
        ));
  }
}
