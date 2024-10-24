import 'package:flutter/material.dart';
import 'package:notesapp/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimayColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          
          hintStyle: const TextStyle(
            color: kPrimayColor,
          ),
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
