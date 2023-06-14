import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

///Com StatefulWidget sempre será usado duas classes

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//Underscore - Classe privada
//Classe responsavel por conter toda a lógica do widget Stateful.
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    //setState é responsavel por avisar o Flutter para realizar uma re-renderização do conteúdo após a atualização de um estado - semelhante ao useState
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      // <- Widget de posicionamento em coluna, tambem há para posicionamento em linha Row().
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png', // interpolação,
        width: 200,
      ),
      const SizedBox(
        //SizedBox é usado para adicionar um elemento em branco com width/height definido (Pode ser usado para dar um margin entre um elemento e outro!)
        height: 20,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          //padding: const EdgeInsets.only(top: 20), // <- tambem é possivel adicionar um padding para fazer o espaçamento.
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 28),
        ),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
