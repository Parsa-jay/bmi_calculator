import 'package:flutter/material.dart';
import 'body.dart';

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
            appBar: AppBar(
              title: const Text('BMI CALCULATOR'),
              centerTitle: true,
              backgroundColor: const Color.fromRGBO(58, 53, 53, 1),
              elevation: 2,
            ),
            body: const Body(),
          );
        }));
  }
}
