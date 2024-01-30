import 'package:flutter/material.dart';
import 'package:mass_petition_app/forgotpassword.dart';
import 'package:mass_petition_app/loginbutton.dart';
import 'package:mass_petition_app/password.dart';
import 'package:mass_petition_app/registration.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            //login
            Padding(
              padding: EdgeInsets.only(top: 90),
              child: Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //username textfeild
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 10),
            Password(),
            Row(
              children: [Register(), Forgotps()],
            ),
            Lgbutton(),

            //new user?
          ],
        ),
      ),
    );
  }
}
