import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'body.dart';

class SexSelection extends StatefulWidget {
  const SexSelection({super.key});

  static String userSex = 'male';

  @override
  State<SexSelection> createState() => _SexSelectionState();
}

class _SexSelectionState extends State<SexSelection> {
  Color maleButtonColor = Colors.redAccent;
  Color femaleButtonColor = Colors.white;
  final Color sexButtonDefultColor = Colors.white;
  final Color onPressedColor = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //male button
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            decoration: Body.rowDecoration,
            margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            padding: const EdgeInsets.all(20),
            child: TextButton(
              onPressed: () {
                //button colors turns red, user sex change to male
                setState(() {
                  maleButtonColor = onPressedColor;
                  femaleButtonColor = sexButtonDefultColor;
                  SexSelection.userSex = 'male';
                });
              },
              child: Column(children: [
                SvgPicture.asset(
                  "assets/mars.svg",
                  width: 50,
                  colorFilter:
                      ColorFilter.mode(maleButtonColor, BlendMode.srcIn),
                ),
                Text(
                  'male',
                  style: TextStyle(color: maleButtonColor),
                ),
              ]),
            ),
          ),
        ),
        //female button
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(35, 32, 32, 1),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(88, 88, 88, 0.9),
                    offset: Offset(2, 2),
                    blurRadius: 8,
                  )
                ]),
            margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            padding: const EdgeInsets.all(20),
            child: TextButton(
              onPressed: () {
                //button colors turns red, user sex change to female
                setState(() {
                  femaleButtonColor = onPressedColor;
                  maleButtonColor = sexButtonDefultColor;
                  SexSelection.userSex = 'female';
                });
              },
              child: Column(children: [
                SvgPicture.asset(
                  "assets/venus.svg",
                  width: 50,
                  colorFilter:
                      ColorFilter.mode(femaleButtonColor, BlendMode.srcIn),
                ),
                Text(
                  'female',
                  style: TextStyle(color: femaleButtonColor),
                ),
              ]),
            ),
          ),
        )
      ],
    );
  }
}
