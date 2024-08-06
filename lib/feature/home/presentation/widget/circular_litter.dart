import 'package:flutter/material.dart';

class CircularLetter extends StatelessWidget {
  const CircularLetter({
    super.key, required this.letter,
  });
  final String letter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, .7),
            borderRadius: BorderRadius.circular(100)),
        child: Center(child: Text(letter)),
      ),
    );
  }
}
