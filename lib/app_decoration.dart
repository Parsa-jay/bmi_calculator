import 'package:flutter/material.dart';

class AppDecoration {
  static Color mainColor = const Color.fromRGBO(58, 53, 53, 1);
  static Color secondColor = const Color.fromRGBO(35, 32, 32, 1);
  static Color buttonColor = Colors.white;
  static Color activeColor = Colors.redAccent;

  static BoxDecoration get rowDecoration => BoxDecoration(
          color: secondColor,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(88, 88, 88, 0.9),
              offset: Offset(2, 2),
              blurRadius: 8,
            )
          ]);
}
