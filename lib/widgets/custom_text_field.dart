import 'package:flutter/material.dart';
import 'package:notesapp/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimayColor,
      decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: const TextStyle(
            color: kPrimayColor,
          ),
          labelText: 'Title',
          border: bulidBorder(),
          enabledBorder: bulidBorder(),
          // I can't know how change the color by variables.
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: kPrimayColor,
              ))),
    );
  }
}

OutlineInputBorder bulidBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ));
}
