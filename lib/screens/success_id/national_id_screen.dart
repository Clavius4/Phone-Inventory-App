import 'package:flutter/material.dart';
import 'package:phone_inventory_app/screens/otp_screen/otp_screen.dart';
import 'package:phone_inventory_app/utils/themes.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';


class NationalIDScreen extends StatefulWidget {
  const NationalIDScreen({super.key});

  @override
  State<NationalIDScreen> createState() => _NationalIDScreenState();
}

class _NationalIDScreenState extends State<NationalIDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Identification',
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
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  'ENTER YOUR NATIONAL ID(OPTIONAL)',
                style: TextStyle(
                  color: AppColors.tertiaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter'
                ),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                placeholderText: 'NATIONAL ID Number(Optional)',
                leadingImagePath: 'assets/email.png',
                placeholderOffset: Offset(0, 15),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle send OTP
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Black background color
                      fixedSize: Size(152, 62), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Corner radius
                      ),
                      elevation: 0, // Removes shadow
                    ),
                    child: const Center(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16, // Text size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 26), // Space between the buttons
                  ElevatedButton(
                    onPressed: () {
                      // Handle sign up
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const OtpScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2F80ED), // Blue background color
                      fixedSize: Size(152, 62), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Corner radius
                      ),
                      elevation: 0, // Removes shadow
                    ),
                    child: const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF), // White text color
                          fontSize: 16, // Text size
                          fontWeight: FontWeight.bold, // Text weight
                        ),
                      ),
                    ),
                  ),
                ],
              ),            ],
          ),
        ),
      ),
    );
  }
}
