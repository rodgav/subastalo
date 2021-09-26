import 'package:flutter/material.dart';

class FooterDashboard extends StatelessWidget {
  const FooterDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final bool web = size.width > 800;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      decoration: const BoxDecoration(color: Color(0xffF5F5F5)),
      child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 15,
          runSpacing: 15,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Image.asset(
                'assets/images/logo.png',
                width: 151,
                height: 33,
              ),
            ),
            const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text('Nosotros', style: TextStyle(fontSize: 12)),
            ),
            const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text('¿Cómo comprar?', style: TextStyle(fontSize: 12)),
            ),
            const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text('Empieza a vender', style: TextStyle(fontSize: 12)),
            ),
            const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text('Politica de privacidad',
                  style: TextStyle(fontSize: 12)),
            ),
            const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text('Términos de uso', style: TextStyle(fontSize: 12)),
            ),
          ]),
    );
  }
}
