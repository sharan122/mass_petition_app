import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white)),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
