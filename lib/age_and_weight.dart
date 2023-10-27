import 'package:flutter/material.dart';
import 'app_decoration.dart';

class AgeAndWeight extends StatefulWidget {
  const AgeAndWeight({super.key});
  static int usersWeight = 65;
  static int usersAge = 25;
  @override
  State<AgeAndWeight> createState() => _AgeAndWeightState();
}

class _AgeAndWeightState extends State<AgeAndWeight> {
  //----------------------------------------
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //weight:

        Flexible(
          fit: FlexFit.tight,
          child: Container(
            decoration: AppDecoration.rowDecoration,
            margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const Text(
                'Weight',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AgeAndWeight.usersWeight.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'kg',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        AgeAndWeight.usersWeight++;
                      });
                    },
                    mini: true,
                    backgroundColor: Colors.black45,
                    elevation: 3,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (AgeAndWeight.usersWeight > 1) {
                          AgeAndWeight.usersWeight--;
                        }
                      });
                    },
                    mini: true,
                    backgroundColor: Colors.black45,
                    elevation: 3,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),

        //age:

        Flexible(
          fit: FlexFit.tight,
          child: Container(
            decoration: AppDecoration.rowDecoration,
            margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const Text(
                'Age',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                AgeAndWeight.usersAge.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        AgeAndWeight.usersAge++;
                      });
                    },
                    mini: true,
                    backgroundColor: Colors.black45,
                    elevation: 3,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (AgeAndWeight.usersAge > 1) {
                          AgeAndWeight.usersAge--;
                        }
                      });
                    },
                    mini: true,
                    backgroundColor: Colors.black45,
                    elevation: 3,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
