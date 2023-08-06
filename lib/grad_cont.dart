import 'package:flutter/material.dart';
import 'package:first_app/dice_roller_widget.dart';

const startAL = Alignment.topCenter;
const endAl = Alignment.bottomCenter;

class ContainWid extends StatelessWidget {
  const ContainWid(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors, begin: startAL, end: endAl),
        ),
        child: const Center(
          child: diceRoller(),
        ));
  }
}
