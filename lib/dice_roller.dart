import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceFace = 1;
  void rollDice() {
    setState(() {
      currentDiceFace = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dice-$currentDiceFace.png', width: 200),
          SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            child: const Text('Roll Dice',
                style: TextStyle(color: Colors.white, fontSize: 28)),
          )
        ],
      ),
    );
  }
}
