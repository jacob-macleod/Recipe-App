import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 172, 168, 168),
        fontSize: 14,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
