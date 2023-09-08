import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({required this.header, required this.message, super.key});
  final String header;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(header),
            Text(message),
          ],
        ),
      ),
    );
  }
}
