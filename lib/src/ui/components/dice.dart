import 'dart:math';

import 'package:flutter/material.dart';

final randomize = Random();

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  int currentDice = randomize.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDice = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDice.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        )
      ],
    );
  }
}
