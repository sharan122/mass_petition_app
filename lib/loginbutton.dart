import 'package:flutter/material.dart';
import 'package:mass_petition_app/homepage/homepage.dart';

class Lgbutton extends StatelessWidget {
  const Lgbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) {
            return const Homepage();
          }),
        );
      },
      child: const Text('LOGIN'),
    );
  }
}
