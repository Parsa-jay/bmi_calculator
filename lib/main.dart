import 'package:flutter/material.dart';

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

              // second row

              // third row

              // forth row
            ],
          ),
        );
      }),
    );
  }
}
