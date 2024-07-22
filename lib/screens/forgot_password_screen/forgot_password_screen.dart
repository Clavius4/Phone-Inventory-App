import 'package:flutter/material.dart';
import 'package:phone_inventory_app/utils/themes.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Reset Password',
        leadingIcon: IconButton(
          icon: const Icon(Icons.cancel_outlined, color: Color(0xFF21205A)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextField(
                placeholderText: 'Email Address',
                leadingImagePath: 'assets/email.png',
                placeholderOffset: Offset(0, 15),
              ),
              const SizedBox(height: 20),
              CustomButton(
                buttonText: 'Send OTP',
                onPressed: () {
                  // Handle sign up
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
