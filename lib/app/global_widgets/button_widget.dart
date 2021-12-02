import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWid extends StatelessWidget {
  final double width;
  final double height;
  final Color color1;
  final Color color2;
  final String textButt;
  final double fontSize;
  final double circular;
  final VoidCallback voidCallback;

  const ButtonWid(
      {Key? key,
      required this.width,
      required this.height,
      required this.color1,
      required this.color2,
      required this.textButt,
      this.fontSize = 16,
        this.circular = 100,
      required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        ),
        onPressed: voidCallback,
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [color1, color2]),
              borderRadius: BorderRadius.circular(circular)),
          child: Container(
            constraints: BoxConstraints(minWidth: width, minHeight: height),
            //margin: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:  FittedBox(fit: BoxFit.scaleDown,
              child: Text(
                  textButt,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
