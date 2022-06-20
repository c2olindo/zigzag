import 'package:flutter/material.dart';
import 'package:zigzag/widgets/button_widget.dart';
import 'package:zigzag/widgets/otp_input_widget.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Image(image: AssetImage('assets/images/logo.png')),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Enter verification code',
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('We sent a code to the following number: '),
                  Text('+8801712345678'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    OtpInputField(),
                    OtpInputField(),
                    OtpInputField(),
                    OtpInputField(),
                    OtpInputField(),
                    OtpInputField(),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Resend OTP'),
              ),
              const SizedBox(
                height: 40,
              ),
              const AuthButton(text: 'Next'),
            ],
          ),
        ),
      ),
    );
  }
}
