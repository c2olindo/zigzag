import 'package:flutter/material.dart';

// All Buttons are here

class AuthButton extends StatelessWidget {
  final String text;

  const AuthButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: MaterialButton(
        onPressed: () {},
        color: const Color(0xFF0165FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        minWidth: double.infinity,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SocialAuthButton extends StatelessWidget {
  final String text;
  const SocialAuthButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 90,
      child: OutlinedButton(
        onPressed: () {},
        child: Image(
          image: AssetImage(text),
          height: 30,
          width: 30,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
