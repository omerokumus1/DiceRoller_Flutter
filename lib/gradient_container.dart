import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  GradientContainer.purple({super.key})
      : colors = [
          const Color.fromARGB(255, 26, 2, 80),
          const Color.fromARGB(255, 26, 25, 28),
        ];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
