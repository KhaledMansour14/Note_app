import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 12, left: 12),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 12, left: 4, bottom: 12),
                child: Text('Build your career with tharwat samy',
                    style: TextStyle(
                      color: Color.fromARGB(255, 69, 69, 69),
                      fontSize: 18,
                    )),
              ),
              trailing: Icon(
                size: 30,
                Icons.delete,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24, bottom: 8),
              child: Text(
                'May21, 2022',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
