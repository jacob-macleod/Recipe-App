import 'package:flutter/material.dart';
import 'package:meals_app/widgets/text/header.dart';
import 'package:meals_app/widgets/text/normal_text.dart';

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
            Header(header),
            NormalText(message),
          ],
        ),
      ),
    );
  }
}
