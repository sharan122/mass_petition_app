// ignore_for_file: unused_field, avoid_print, non_constant_identifier_names

// import 'dart:js_interop';

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:mass_petition_app/Models/SignUpModel.dart';
// import 'package:mass_petition_app/password.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

// handling api end point
Future<Signup> submitData(
  firstName,
  lastname,
  password,
  email,
  address,
  pincode,
  district,
  localbodyName,
  fkRoleId,
  fklocalbodyId,
  fklocalbodyTypeId,
  DistrictId,
) async {
  const String apiUrl = 'http://54.89.172.156/signup';
  final response = await http.post(Uri.parse(apiUrl), body: {
    "firstName": firstName,
    "lastname": lastname,
    "password": password,
    "email": email,
    "address": address,
    "pincode": pincode,
    "district": district,
    "localbodyName": localbodyName,
    "fkRoleId": fkRoleId,
    "fklocalbodyId": fklocalbodyId,
    "fklocalbodyTypeId": fklocalbodyTypeId,
    "DistrictId": DistrictId,
  });
  var data = response.body;
  print(data);
  if (response.statusCode == 200) {
    Signup signup = Signup.fromJson(response.data);
    return signup;
  } else {
    throw Exception("failed to create user");
  }
}

class _RegistrationState extends State<Registration> {
  Signup? _signup;
  TextEditingController fnController = TextEditingController();
  TextEditingController lnController = TextEditingController();
  TextEditingController psController = TextEditingController();
  // TextEditingController cpsController = TextEditingController();
  // TextEditingController phController = TextEditingController();
  TextEditingController emController = TextEditingController();
  TextEditingController adController = TextEditingController();
  TextEditingController dsController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController lbcontroller = TextEditingController();
  String? localbody;
// signup ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'REGISTER',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, left: 20),
                  child: TextField(
                    controller: fnController,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.white)),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: TextField(
                      controller: lnController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Last Name',
                          hintStyle: TextStyle(color: Colors.white)),
                      style: const TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20, right: 26, top: 10),
          //   child: TextField(
          //       controller: phController,
          //       decoration: const InputDecoration(
          //           enabledBorder: OutlineInputBorder(
          //               borderSide: BorderSide(color: Colors.white)),
          //           hintText: 'Phone Number',
          //           hintStyle: TextStyle(color: Colors.white)),
          //       keyboardType: TextInputType.number,
          //       style: const TextStyle(color: Colors.white)),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 26, top: 10),
            child: TextField(
                controller: emController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white)),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white)),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(top: 10, right: 180),
          //   child: Text(
          //     'Gender',
          //     style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white,
          //         fontSize: 16),
          //   ),
          // ),
          // ListTile(
          //   title: const Text(
          //     'Male',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   leading: Radio(
          //     value: 'male',
          //     groupValue: gender,
          //     onChanged: (String? value) {
          //       setState(() {
          //         gender = value;
          //       });
          //     },
          //   ),
          // ),
          // ListTile(
          //   title: const Text(
          //     'Female',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   leading: Radio(
          //     value: 'female',
          //     groupValue: gender,
          //     onChanged: (String? value) {
          //       setState(() {
          //         gender = value;
          //       });
          //     },
          //   ),
          // ),
          // TextButton(
          //     onPressed: _showDatePicker,
          //     child: const Padding(
          //       padding: EdgeInsets.only(right: 180),
          //       child: Text(
          //         'Select Date of Birth:',
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 18),
          // ),
          //     )),  gender = value;
          //       });
          //     },
          //   ),
          // ),
          // ListTile(
          //   title: const Text(
          //     'Female',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   leading: Radio(
          //     value: 'female',
          //     groupValue: gender,
          //     onChanged: (String? value) {
          //       setState(() {
          //         gender = value;
          //       });
          //     },
          //   ),
          // ),
          // TextButton(
          //     onPressed: _showDatePicker,
          //     child: const Padding(
          //       padding: EdgeInsets.only(right: 180),
          //       child: Text(
          //         'Select Date of Birth:',
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 18),
          //       ),
          //     )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
                controller: adController,
                maxLines: 5,
                maxLength: 300,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Address',
                    hintStyle: TextStyle(color: Colors.white)),
                style: const TextStyle(color: Colors.white)),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 26, top: 10),
            child: TextField(
                maxLength: 6,
                controller: pinController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'pincode',
                    hintStyle: TextStyle(color: Colors.white)),
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 26, top: 3),
            child: TextField(
                controller: dsController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'District',
                    hintStyle: TextStyle(color: Colors.white)),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white)),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 190),
            child: Text(
              'Select Your Localbody Type',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
          ),
          ListTile(
            title: const Text(
              'Panchayath',
              style: TextStyle(color: Colors.white),
            ),
            leading: Radio(
              value: '6586cf433c4aaf21bd1452a0',
              groupValue: localbody,
              onChanged: (String? value) {
                setState(() {
                  localbody = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              'Municipality',
              style: TextStyle(color: Colors.white),
            ),
            leading: Radio(
              value: '6587bb366a0cc71ecfab89b0',
              groupValue: localbody,
              onChanged: (String? value) {
                setState(() {
                  localbody = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              'Corporation',
              style: TextStyle(color: Colors.white),
            ),
            leading: Radio(
              value: '6587bb7a6a0cc71ecfab89b2',
              groupValue: localbody,
              onChanged: (String? value) {
                setState(() {
                  localbody = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 26, top: 10),
            child: TextField(
                controller: psController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Localbody Name',
                    hintStyle: TextStyle(color: Colors.white)),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 26, top: 10),
            child: TextField(
                controller: lbcontroller,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white)),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white)),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20, right: 26, top: 10),
          //   child: TextField(
          //       controller: cpsController,
          //       decoration: const InputDecoration(
          //           enabledBorder: OutlineInputBorder(
          //               borderSide: BorderSide(color: Colors.white)),
          //           hintText: 'Confirm Password',
          //           hintStyle: TextStyle(color: Colors.white)),
          //       keyboardType: TextInputType.emailAddress,
          //       style: const TextStyle(color: Colors.white)),
          // ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                String firstName = fnController.text;
                String lastname = lnController.text;
                String password = psController.text;
                String email = emController.text;
                String address = adController.text;
                String pincode = pinController.text;
                String district = dsController.text;
                String localbodyName = lbcontroller.text;
                String? fklocalbodyTypeId = localbody.toString();
                String? fkRoleId = "6581eabb9e3ba253cc4946cc".toString();
                String? DistrictId = "658193029e3ba253cc4946bf".toString();
                String? fklocalbodyId = localbody;

                Signup data = await submitData(
                    firstName,
                    lastname,
                    password,
                    email,
                    address,
                    pincode,
                    district,
                    localbodyName,
                    fkRoleId,
                    DistrictId,
                    fklocalbodyId,
                    fklocalbodyTypeId);

                setState(() {
                  _signup = data;
                });
              },
              child: const Text(
                'Submit',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      )),
    );
  }
}
