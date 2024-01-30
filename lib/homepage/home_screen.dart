// ignore_for_file: must_be_immutable

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
    this.title,
    this.description,
    this.poincode,
    this.locstion,
    this.pickedfile,
    //required TextEditingValue pincode,
    //required String location
  });

  String? title;
  String? description;
  String? poincode;
  String? locstion;
  PlatformFile? pickedfile;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: const [
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 300),
            child: Text(
              'Home Screen',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ))
        ],
      )),
    );
  }
}
