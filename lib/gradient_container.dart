import 'package:flutter/material.dart';
import './styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
Alignment startAlign = Alignment.topLeft;
Alignment? endAlign;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

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
      child: Center(child: StyledText('this is some more text')),
    );
  }
}
