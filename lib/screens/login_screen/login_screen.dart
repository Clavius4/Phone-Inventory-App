import 'package:flutter/material.dart';
import 'package:phone_inventory_app/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:phone_inventory_app/screens/register_screen/register_screen.dart';
import 'package:phone_inventory_app/screens/success_id/success_id_screen.dart';
import 'package:phone_inventory_app/utils/themes.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../success_id/national_id_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 50),
              const CustomTextField(
                placeholderText: 'Email Address',
                leadingImagePath: 'assets/email.png',
                placeholderOffset: Offset(0, 15),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                placeholderText: 'Password',
                leadingImagePath: 'assets/Lock.png',
                placeholderOffset: Offset(0, 15),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Handle forgot password
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
                  );
                },
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(color: Color(0xFF2F80ED)),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                buttonText: 'Sign In',
                onPressed: () {
                  // Handle sign in
                //   Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => const NationalIDScreen()),
                //   );
                },
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Handle sign up navigation
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignupScreen()),
                  );
                },
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    color: Color(0xFF2F80ED),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
