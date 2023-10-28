import 'package:flutter/material.dart';
import 'app_decoration.dart';

class Calculation extends StatefulWidget {
  const Calculation({super.key});

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: AppDecoration.activeColor,
      minWidth: double.infinity,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: const Text('Calculate',
          style: TextStyle(fontSize: 25, color: Colors.white)),
    );
  }
}
