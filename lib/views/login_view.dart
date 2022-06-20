// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:zigzag/widgets/button_widget.dart';
import 'package:zigzag/widgets/phone_number_widget.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 160,
                ),
                const Image(image: AssetImage('assets/images/logo.png')),
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF191B32)),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Please enter your phone number to login with OTP',
                  style: TextStyle(
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //Button
                const PhoneNumberInput(),

                const SizedBox(
                  height: 20,
                ),
                const AuthButton(
                  text: 'Request OTP',
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('or, login with ...'),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SocialAuthButton(
                          text: 'assets/images/logo-google-50.png'),
                      SizedBox(
                        width: 30,
                      ),
                      SocialAuthButton(
                          text: 'assets/images/logo-facebook-50.png'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('New to Zigzag?'),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
