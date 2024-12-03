import 'package:flutter/material.dart';

class SElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;
  const SElevatedButton({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(255, 170, 100, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          letterSpacing: 4,
          fontFamily: 'Kanit',
        ),
      ),
    );
  }
}
