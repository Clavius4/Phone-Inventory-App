import 'package:flutter/material.dart';
import 'package:phone_inventory_app/utils/themes.dart';
import 'dart:async';

import '../login_screen/login_screen.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/success.gif',
              width: 200,
              height: 200,
            ),
            Transform.translate(
              offset: const Offset(0, 180),
              child: const Text(
                "Account Verified. \n ID Details saved!",
                style: TextStyle(
                  color: AppColors.tertiaryColor,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
