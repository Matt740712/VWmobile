import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 25, 20, 20), //Primary
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),

        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
