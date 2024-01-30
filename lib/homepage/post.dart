import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  PlatformFile? pickedfile;

  // String? _fileName;
  FilePickerResult? result;
  bool isLoading = false;
  File? fileToDisplay;
  final title = TextEditingController();
  final _description = TextEditingController();
  final _pincode = TextEditingController();
  final _location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          IconButton(
            onPressed: () {
              pickFile();
            },
            icon: const Icon(
              Icons.add,
            ),
            iconSize: 65,
          ),
          const Center(
              child: Text(
            "Add Media",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 130),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: const BorderSide(
                    width: 1.0,
                    color: Colors.black,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Upload',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              controller: title,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Add Title',
                  hintStyle: TextStyle(color: Colors.grey)),
              style: const TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: _description,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
                  hintText: 'Add Description',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                style: const TextStyle(color: Colors.black),
              )),
          // const SizedBox(
          //   height: 15,
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 50.0),
          //   child: TextField(
          //     decoration: InputDecoration(
          //         enabledBorder: OutlineInputBorder(
          //             borderSide: BorderSide(color: Colors.black)),
          //         hintText: 'Add Option 1',
          //         hintStyle: TextStyle(color: Colors.grey)),
          //     style: TextStyle(color: Colors.black),
          //   ),
          // ),
          // const SizedBox(
          //   height: 15,
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 50.0),
          //   child: TextField(
          //     decoration: InputDecoration(
          //         enabledBorder: OutlineInputBorder(
          //             borderSide: BorderSide(color: Colors.black)),
          //         hintText: 'Add Option 2',
          //         hintStyle: TextStyle(color: Colors.grey)),
          //     style: TextStyle(color: Colors.black),
          //   ),
          // ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              controller: _pincode,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Enter Pincode',
                  hintStyle: TextStyle(color: Colors.grey)),
              style: const TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              controller: _location,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Enter Location',
                  hintStyle: TextStyle(color: Colors.grey)),
              style: const TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 130),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: const BorderSide(
                    width: 1.0,
                    color: Colors.black,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'POST',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          )
        ],
      )),
    );
  }

  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform
          .pickFiles(type: FileType.any, allowMultiple: true);
      if (result != null) {
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      // print("select a file");
    }
  }
}
