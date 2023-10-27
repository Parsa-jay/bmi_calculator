import 'package:flutter/material.dart';
import 'body.dart';
import 'app_decoration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(builder: (context) {
          return Scaffold(
            backgroundColor: AppDecoration.mainColor,
            appBar: AppBar(
              title: const Text('BMI CALCULATOR'),
              toolbarHeight: MediaQuery.of(context).size.height * 0.1,
              centerTitle: true,
              backgroundColor: AppDecoration.secondColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 3,
            ),
            body: const Body(),
          );
        }));
  }
}
