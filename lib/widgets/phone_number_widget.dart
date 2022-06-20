import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          InternationalPhoneNumberInput(
            onInputChanged: (value) {},
            cursorColor: Colors.black,
            formatInput: false,
            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            ),
            inputDecoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Phone number',
              hintStyle: TextStyle(
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
