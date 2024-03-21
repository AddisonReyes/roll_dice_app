import 'package:roll_dice_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final rng = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = rng.nextInt(6) + 1;
  
  void rollDice() {
    setState(() {
      currentDiceRoll = rng.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/dice-$currentDiceRoll.png',
          width: 200,
        ),

        const SizedBox(height: 20,),

        TextButton(
          onPressed: rollDice, 
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28
            )
          ),
          child: const StyledText(
            text: "Roll Dice"
          ),
        ),
      ],
    );
  }
}