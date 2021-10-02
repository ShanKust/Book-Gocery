import 'package:book_grocer/widgets.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff5ABD8C),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(190),
                        bottomLeft: Radius.circular(190))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 15),
                child: Text(
                  "Our Top Picks",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onTap: () {}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170.0),
                child: Center(
                  child: CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        height: 200,
                        width: 127,
                        child: Image(
                          image: AssetImage(
                            'assets/b1.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 200,
                        width: 127,
                        child: Image(
                          image: AssetImage(
                            'assets/b2.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: 200,
                        width: 127,
                        child: Image(
                          image: AssetImage(
                            'assets/b3.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 400.0, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Bestsellers',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 200,
                              width: 122.5,
                              child: Image(
                                image: AssetImage(
                                  'assets/s1.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 200,
                              width: 122.5,
                              child: Image(
                                image: AssetImage(
                                  'assets/s2.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 200,
                              width: 122.5,
                              child: Image(
                                image: AssetImage(
                                  'assets/s3.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fatherhood',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'In A Land Of Paper Gods',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'Tattletale',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'by Christopher Wilson',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'by Rebecca Mackenzie',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'by Sarah J. Noughton',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // for (int i = 0; i < 3; i++)
                            RatingBar.builder(
                              itemSize: 12,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 3.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            RatingBar.builder(
                              itemSize: 12,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 3.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            RatingBar.builder(
                              itemSize: 12,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 3.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Genres',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff1C4A7E),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 201,
                              width: 278,
                              child: Image(
                                image: AssetImage(
                                  'assets/Group 94.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffC65135),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 201,
                              width: 278,
                              child: Image(
                                image: AssetImage(
                                  'assets/Group 94.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Recently Viewed',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10)),
                            height: 200,
                            width: 154,
                            child: Image(
                              image: AssetImage(
                                'assets/d3.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10)),
                            height: 200,
                            width: 132,
                            child: Image(
                              image: AssetImage(
                                'assets/d2.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10)),
                            height: 200,
                            width: 132.41,
                            child: Image(
                              image: AssetImage(
                                'assets/d1.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'The Fatal Tree',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              'Day Four',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              'Door to Door',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Monthly Newsletter',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          'Receive our monthly newsletter and receive updates on new stock, books and the occasional promotion.'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: myTextField(hintText: 'Name', labelText: 'Name'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: myTextField(hintText: 'Email', labelText: 'Email'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: 32,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Color(0xff5ABD8C),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
