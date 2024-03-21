import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

// ignore: must_be_immutable
class  GradienContainer extends StatelessWidget {
  final List<Color> colors;

  const GradienContainer({
    super.key,
    required this.colors
  });

  GradienContainer.purple({super.key})
    : colors = [Colors.deepPurple, Colors.indigo];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAligment
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}