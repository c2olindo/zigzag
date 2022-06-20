import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;

  const TextFieldInput({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.black12,
            ),
          ),
        ),
      ),
    );
  }
}
