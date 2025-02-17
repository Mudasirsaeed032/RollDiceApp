import 'package:flutter/material.dart';
import './styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
Alignment startAlign = Alignment.topLeft;
Alignment? endAlign;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  var activDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activDiceImage = 'assets/images/dice-4.png';
    print('Button is pressed!');
  }

  @override
  Widget build(context) {
    endAlign = Alignment.bottomRight;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlign,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activDiceImage, width: 250),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
