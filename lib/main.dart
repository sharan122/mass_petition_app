import 'package:flutter/material.dart';
import 'package:mass_petition_app/registration/forgotpassword/role.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lightBlue, highlightColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const Role(),
    );
  }
}
