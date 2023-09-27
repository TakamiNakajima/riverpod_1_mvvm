import 'package:flutter/material.dart';

class SimpleButtonWidget extends StatelessWidget {
  const SimpleButtonWidget({super.key, required this.text, required this.onPressed});

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
