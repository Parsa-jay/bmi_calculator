import 'package:flutter/material.dart';
import 'height.dart';
import 'age_and_weight.dart';
import 'sex-selection.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  static const BoxDecoration rowDecoration = BoxDecoration(
      color: Color.fromRGBO(35, 32, 32, 1),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Color.fromRGBO(88, 88, 88, 0.9),
          offset: Offset(2, 2),
          blurRadius: 8,
        )
      ]);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // first row

        Container(height: 140, child: const SexSelection()),

        // second row, height slider
        Container(
          decoration: Body.rowDecoration,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(30),
          height: 160,
          child: const HeightSlider(),
        ),

        // third row
        Container(
          height: 160,
          child: const AgeAndWeight(),
        ),

        // forth row
        Container(
          height: 120,
          color: Colors.purple,
          child: Row(),
        )
      ],
    );
  }
}
