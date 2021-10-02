import 'package:book_grocer/menupage.dart';
import 'package:book_grocer/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'bottom_navigation.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 20, right: 30),
        child: Column(
          children: [
            Text(
              'Help Us Help You',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "It seems as this is your first time using our app, please enter your location so we can filter our results and stock accordingly to your local store "
              "If you choose to skip, you can change your location at any time in your account settings.",
              style: TextStyle(color: Color(0xff212121), fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            myTextField(hintText: 'State', labelText: 'State'),
            SizedBox(
              height: 20,
            ),
            myTextField(hintText: 'City', labelText: 'City'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyMenuPage()),
                    );
                  },
                  child: Text('Skip'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
