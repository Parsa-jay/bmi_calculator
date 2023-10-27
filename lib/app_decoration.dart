import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration get rowDecoration => const BoxDecoration(
          color: Color.fromRGBO(35, 32, 32, 1),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(88, 88, 88, 0.9),
              offset: Offset(2, 2),
              blurRadius: 8,
            )
          ]);
}
