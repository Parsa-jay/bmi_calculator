import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('BMI CALCULATOR'),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(58, 53, 53, 1),
            elevation: 2,
          ),
          body: Column(
            children: [
              // first row

              Container(
                height: 140,
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(35, 32, 32, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
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
                          onPressed: () {},
                          child: Column(children: [
                            SvgPicture.asset(
                              "assets/mars.svg",
                              width: 50,
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                            Text(
                              'male',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(35, 32, 32, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
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
                          onPressed: () {},
                          child: Column(children: [
                            SvgPicture.asset(
                              "assets/venus.svg",
                              width: 50,
                              colorFilter: ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                            Text(
                              'female',
                              style: TextStyle(color: Colors.white),
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
          ),
        );
      }),
    );
  }
}
