import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 12,),
      child: Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
