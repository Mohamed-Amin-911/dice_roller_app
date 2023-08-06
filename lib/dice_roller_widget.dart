import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});
  @override
  State<diceRoller> createState() {
    return _diceRollerState();
  }
}

class _diceRollerState extends State<diceRoller> {
  var activeDice = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      var randDice = randomizer.nextInt(6) + 1;
      activeDice = 'assets/images/dice-$randDice.png';
    });
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 176, 62, 39),
                textStyle: const TextStyle(fontSize: 30, fontFamily: 'Arial')),
            child: const Text('ROLL THE DICE'))
      ],
    );
  }
}
