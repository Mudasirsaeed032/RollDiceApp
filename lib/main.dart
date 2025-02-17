import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: GradientContainer())));
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 79, 6, 6),
            const Color.fromARGB(255, 179, 9, 9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          'This is not mentioned',
          style: TextStyle(color: Colors.white, fontSize: 28.5),
        ),
      ),
    );
  }
}
