import 'package:flutter/material.dart';

class ButtonWid extends StatelessWidget {
  final double width;
  final double height;
  final Color color1;
  final Color color2;
  final String textButt;

  const ButtonWid(
      {Key? key,
      required this.width,
      required this.height,
      required this.color1,
      required this.color2,
      required this.textButt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        ),
        onPressed: () => null,
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [color1, color2]),
              borderRadius: BorderRadius.circular(100)),
          child: Container(
            constraints: BoxConstraints(minWidth: width, minHeight: height),
            //margin: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            alignment: Alignment.center,
            child: Text(
              textButt,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
