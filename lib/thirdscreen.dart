import 'package:book_grocer/secondpage.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'Fourthpage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Sell or Recycle Your Old  ",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Books With Us",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " looking to downsize, sell or recycle old books, the Book Grocer can help.",
              style: TextStyle(
                color: Colors.teal[200],
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image(
              height: 277.75,
              width: 266.67,
              image: AssetImage("assets/3.png"),
            ),
            SizedBox(
              height: 10,
            ),
            DotsIndicator(
              decorator: DotsDecorator(activeColor: Colors.teal),
              dotsCount: 4,
              position: 2,
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
                        MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                    }),
                FloatingActionButton(
                    child: Icon(Icons.navigate_next),
                    backgroundColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FourthPage()),
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
