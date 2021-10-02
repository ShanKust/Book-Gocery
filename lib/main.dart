import 'dart:ui';

import 'package:book_grocer/secondpage.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Book Grocer",
        home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Discounted ",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Secondhand Books ",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Used and near new secondhand books at great prices",
              style: TextStyle(
                color: Colors.teal[200],
                fontSize: 18,
              ),
            ),
            Image(
              image: AssetImage("assets/1.png"),
            ),
            DotsIndicator(
              decorator: DotsDecorator(activeColor: Colors.teal),
              dotsCount: 4,
              position: 0,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                    child: Icon(Icons.navigate_next),
                    backgroundColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
