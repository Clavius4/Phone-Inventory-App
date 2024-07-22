import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:phone_inventory_app/screens/success_id/success_id_screen.dart';

import '../../widgets/custom_appbar.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Verification',
        leadingIcon: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF21205A)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Please enter the OTP sent to your email  address',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF21205A),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              OtpPinField(
                maxLength: 5,
                onSubmit: (String pin) {
                  print('Entered OTP: $pin');
                },
                otpPinFieldStyle: const OtpPinFieldStyle(
                  activeFieldBorderColor: Colors.blue,
                  defaultFieldBorderColor: Colors.black45,
                  activeFieldBorderGradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
                  filledFieldBorderGradient: LinearGradient(colors: [Colors.green, Colors.tealAccent]),
                  defaultFieldBorderGradient: LinearGradient(colors: [Colors.orange, Colors.brown]),
                ),
                cursorColor: Colors.indigo,
                fieldHeight: 45.0,
                fieldWidth: 45.0,
                onChange: (String text) {},
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle resend OTP
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(152, 62),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Resend OTP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle verify OTP
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const SuccessScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2F80ED),
                      fixedSize: const Size(152, 62),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Verify OTP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}