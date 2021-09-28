import 'package:book_grocer/main.dart';
import 'package:book_grocer/thirdscreen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
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
                "20 Book Grocers  ",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Nationally ",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We've successfully opened 20 stores across Australia.",
              style: TextStyle(
                color: Colors.teal[200],
                fontSize: 18,
              ),
            ),
            Image(
              image: AssetImage("assets/2.png"),
            ),
            SizedBox(
              height: 10,
            ),
            DotsIndicator(
              dotsCount: 4,
              position: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                    child: Icon(Icons.navigate_before),
                    backgroundColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstPage()),
                      );
                    }),
                FloatingActionButton(
                    child: Icon(Icons.navigate_next),
                    backgroundColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage()),
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
