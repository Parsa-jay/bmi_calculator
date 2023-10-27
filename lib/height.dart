import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_decoration.dart';

/* this widget take users height with using a CupertinoSlider. min height is 120
and max height is 240 */

class HeightSlider extends StatefulWidget {
  const HeightSlider({super.key});
  static double usersHeightValue = 172;
  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Text('Height',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            Row(
              children: [
                Text(HeightSlider.usersHeightValue.toString().substring(0, 3),
                    style: const TextStyle(color: Colors.white, fontSize: 20)),
                const Text(
                  'cm',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            CupertinoSlider(
              onChanged: (c) {
                setState(() {
                  HeightSlider.usersHeightValue = c;
                });
              },
              value: HeightSlider.usersHeightValue,
              activeColor: AppDecoration.activeColor,
              min: 120,
              max: 240,
              divisions: 120,
            )
          ],
        )
      ],
    );
  }
}
