import 'package:flutter/material.dart';
import 'package:phone_inventory_app/utils/themes.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../success_id/national_id_screen.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Register',
        leadingIcon: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF21205A)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const CustomTextField(
                placeholderText: 'First Name',
                leadingImagePath: 'assets/user.png',
                placeholderOffset: Offset(0, 15),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                placeholderText: 'Last Name',
                leadingImagePath: 'assets/user.png',
                placeholderOffset: Offset(0, 15),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                placeholderText: 'Phone Number',
                leadingImagePath: 'assets/phone.png',
                placeholderOffset: Offset(0, 15),
              ),
              const SizedBox(height: 20),
              Transform.translate(
                offset: const Offset(30, -2),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/info.png',
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'For quicker OTP, provide your email',
                      style: TextStyle(
                        color: Color(0xFF21205A),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
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
              const CustomTextField(
                placeholderText: 'Confirm Password',
                leadingImagePath: 'assets/Lock.png',
                placeholderOffset: Offset(0, 15),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'By tapping Sign Up, you agree to our',
                  style: TextStyle(
                    color: Color(0xFF21205A),
                    fontSize: 16,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle terms and conditions navigation
                },
                child: const Center(
                  child: Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      color: Color(0xFF2F80ED),
                      fontSize: 16,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                buttonText: 'Next',
                onPressed: () {
                  // Handle sign up
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const NationalIDScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
