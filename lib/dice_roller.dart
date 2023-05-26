import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final random = Random();
int getDice() => random.nextInt(6) + 1;

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-images/dice-${getDice()}.png';
  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-images/dice-${getDice()}.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
          ),
          child: const StyledText('Roll Dice'),
        ),
      ],
    );
  }
}
