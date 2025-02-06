import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller ({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
  var currentDiceValue = 2;
  void changeImage(){
    setState(() {
       currentDiceValue = randomizer.nextInt(6) +1;
    }); 
  }
  @override
  Widget build(context){
    return (Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/images/dice$currentDiceValue.png',
            width: 150,
            height: 150,
          ),
          TextButton(
            onPressed: changeImage,
            style: TextButton.styleFrom(foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
                padding:const EdgeInsets.only(top: 20)
                ),
            child: const Text('Roll here!!'),
          ),
        ]
      )
    );
  }
}
