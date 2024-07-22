import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leadingIcon;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 0, // Removes shadow
      leading: leadingIcon != null
          ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: leadingIcon,
      )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF21205A), // Text color
          fontSize: 20, // Text size
          fontWeight: FontWeight.bold, // Text weight
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0), // Height of the divider
        child: Container(
          color: const Color(0xFFC3D0E8), // Color of the divider
          height: 1.0, // Thickness of the divider
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56); // Height of the AppBar
}
