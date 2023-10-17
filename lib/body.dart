import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Color maleButtonColor = Colors.redAccent;
  Color femaleButtonColor = Colors.white;
  final Color sexButtonDefultColor = Colors.white;
  final Color onPressedColor = Colors.redAccent;
  String userSex = 'male';

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // first row

        Container(
          height: 140,
          child: Row(
            children: [
              //male button
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
                      //button colors turns red, user sex change to male
                      setState(() {
                        maleButtonColor = onPressedColor;
                        femaleButtonColor = sexButtonDefultColor;
                        userSex = 'male';
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
                        userSex = 'female';
                      });
                    },
                    child: Column(children: [
                      SvgPicture.asset(
                        "assets/venus.svg",
                        width: 50,
                        colorFilter: ColorFilter.mode(
                            femaleButtonColor, BlendMode.srcIn),
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
          ),
        ),

        // second row
        Container(
          height: 140,
          child: Row(),
        ),

        // third row
        Container(
          height: 140,
          color: Colors.yellow,
          child: Row(),
        ),

        // forth row
        Container(
          height: 140,
          color: Colors.purple,
          child: Row(),
        )
      ],
    );
  }
}