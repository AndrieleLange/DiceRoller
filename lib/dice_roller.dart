import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

// quando começa com _ é porque a classe é privada
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) +1;
    });
    print('Changing image...');
  }

  @override
  Widget build(context) {
    
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png', 
              width: 200,
              ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: Text('Roll Dice'),
            ),
          ],
        );
  }
}