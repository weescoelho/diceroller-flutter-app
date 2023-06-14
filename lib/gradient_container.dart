import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

//Tipagem de variavel sem atribuição
// Alignment? startAlignment
// O ponto de interrogação permite que esta variável seja inicializada como null
///Caso a variavel não seja atribuida na intanciação ela será do tipo "dynamic" (any)

//final = semelhante ao const do JS, variável nunca receberá um novo valor, atribuição em tempo de execução
///const = define que a variável terá o valor atribuido no momento da compilação
///caso o valor seja atribuido posteriormente, deverá ser usado o final

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  // Garante que o Widget tenha acesso ao processo de otimização pelo 'const'

  ///Em argumentos nomeados, são não obrigatórios por default
  ///Neste caso é necessário a utilização do "required" para torna-lo obrigatório
  const GradientContainer({super.key, required this.colors});

  //Funções construtoras
  // GradientContainer.purple({super.key})
  //     : colors = [Colors.deepOrange, Colors.black];

  final List<Color> colors;

  // Toda classe que é uma abstração de um trecho de código (componente / widget ) deverá implementar o método build
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
