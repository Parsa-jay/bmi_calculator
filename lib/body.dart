import 'package:flutter/material.dart';
import 'height.dart';
import 'age_and_weight.dart';
import 'sex-selection.dart';
import 'app_decoration.dart';
import 'calculate_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // first row

        Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: const SexSelection()),

        // second row, height slider
        Container(
          decoration: AppDecoration.rowDecoration,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(30),
          height: MediaQuery.of(context).size.height * 0.22,
          child: const HeightSlider(),
        ),

        // third row
        Container(
          height: MediaQuery.of(context).size.height * 0.23,
          child: const AgeAndWeight(),
        ),

        // forth row
        Container(
          height: MediaQuery.of(context).size.height * 0.12,
          child: Calculation(),
        )
      ],
    );
  }
}
