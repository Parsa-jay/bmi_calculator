import 'package:flutter/material.dart';

class AgeAndWeight extends StatefulWidget {
  const AgeAndWeight({super.key});

  @override
  State<AgeAndWeight> createState() => _AgeAndWeightState();
}

class _AgeAndWeightState extends State<AgeAndWeight> {
  int usersWeight = 65;
  int usersAge = 25;
  //----------------------------------------
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //weight:

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
                    usersWeight.toString(),
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
                        usersWeight++;
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
                        if (usersWeight > 1) {
                          usersWeight--;
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
            child: Column(children: [
              const Text(
                'Age',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                usersAge.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        usersAge++;
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
                        if (usersAge > 1) {
                          usersAge--;
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
