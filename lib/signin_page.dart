import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPAge extends StatefulWidget {
  @override
  _SignInPAgeState createState() => _SignInPAgeState();
}

class _SignInPAgeState extends State<SignInPAge> {
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'SignIn',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffEFEFEF),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Name',
                  hintText: 'Name'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffEFEFEF),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Email Address',
                  hintText: 'Email Address'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffEFEFEF),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Password',
                  hintText: 'Password'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.teal,
                        value: checkboxvalue,
                        onChanged: (newValue) {
                          setState(() {
                            checkboxvalue = newValue!;
                          });
                        }),
                    Text(
                      " Stay Logged In",
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      " Forgotten Passward?",
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 56,
                width: 335,
                decoration: BoxDecoration(
                    color: Color(0xff5ABD8C),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
