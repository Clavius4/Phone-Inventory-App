import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2F80ED), // Background color
        fixedSize: const Size(335, 56), // Button size
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Corner radius
        ),
        elevation: 0, // Removes shadow
      ),
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Color(0xFFFFFFFF), // Text color
            fontSize: 16, // Text size
            fontWeight: FontWeight.bold, // Text weight
          ),
        ),
      ),
    );
  }
}
