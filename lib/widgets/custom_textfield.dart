import 'package:flutter/material.dart';
import 'package:phone_inventory_app/utils/themes.dart';

class CustomTextField extends StatelessWidget {
  final String placeholderText;
  final String leadingImagePath;
  final Offset placeholderOffset;

  const CustomTextField({
    Key? key,
    required this.placeholderText,
    required this.leadingImagePath,
    required this.placeholderOffset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 335,
      decoration: BoxDecoration(
        color: const Color(0xFFFCFCFD),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xFFDFDFE6),
          width: 1, // Border width
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: placeholderOffset.dx,
            top: placeholderOffset.dy,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Image.asset(
                    leadingImagePath,
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    placeholderText,
                    style: const TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
            ),
          ),
        ],
      ),
    );
  }
}
