import 'package:flutter/material.dart';
import 'package:notesapp/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});
  final void Function() onTap; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimayColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}
