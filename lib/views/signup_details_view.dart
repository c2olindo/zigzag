import 'package:flutter/material.dart';
import 'package:zigzag/widgets/button_widget.dart';

import '../widgets/textfield_widget.dart';

class SignUpDetails extends StatelessWidget {
  const SignUpDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 60,
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Hello!',
                style: TextStyle(fontSize: 25),
              ),
              Text('Let\'s get to know you.'),
              SizedBox(
                height: 30,
              ),
              TextFieldInput(hintText: 'Your First Name'),
              TextFieldInput(hintText: 'Your Last Name'),
              TextFieldInput(hintText: 'Your Email (optional)'),
              SizedBox(
                height: 30,
              ),
              AuthButton(text: 'Continue'),
            ],
          ),
        ),
      ),
    );
  }
}
