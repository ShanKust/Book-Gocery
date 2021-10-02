import 'package:book_grocer/Welcomepage.dart';
import 'package:book_grocer/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkboxvalue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                'SignUp',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              myTextField(hintText: 'Name', labelText: 'Name'),
              SizedBox(
                height: 20,
              ),
              myTextField(
                  hintText: 'Email Address', labelText: 'Email Address'),
              SizedBox(
                height: 20,
              ),
              myTextField(hintText: 'Mobile Phone', labelText: 'Phone'),
              SizedBox(
                height: 20,
              ),
              myTextField(hintText: 'shan', labelText: "shan ahmed"),
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
                height: 20,
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
                        " Please sign me up for the monthly newsletter.",
                        style: TextStyle(fontSize: 12, color: Colors.black45),
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 56,
                  width: 335,
                  decoration: BoxDecoration(
                      color: Color(0xffEFEFEF),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xff5ABD8C),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
