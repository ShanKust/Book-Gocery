import 'dart:ui';

import 'package:book_grocer/search%20result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
          child: Column(
            children: [
              TextFormField(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchResultPage()));
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  suffixIcon: Icon(
                    Icons.cancel,
                    color: Colors.redAccent,
                  ),
                  fillColor: Color(0xffEFEFEF),
                  prefixIcon: Icon(Icons.search),
                  counterText: 'cancle',
                  labelText: 'Search Books, Authors, or ISBN',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 175,
                      width: 115.94,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/w1.png'),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Heart of Hell',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Mitch Weiss',
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          'The untold story of courage',
                          style: TextStyle(color: Colors.black45),
                        ),
                        RatingBar.builder(
                          itemSize: 12,
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 30,
                              child: Center(
                                  child: Text(
                                'Add to Card',
                                style: TextStyle(color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 98,
                              height: 30,
                              child: Center(
                                  child: Text(
                                'Add to WishList',
                                style: TextStyle(color: Colors.black),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 175,
                      width: 115.94,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/w3.png'),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'War on the Gothic L',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Christian Jennings',
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          'Through the eyes of the',
                          style: TextStyle(color: Colors.black45),
                        ),
                        RatingBar.builder(
                          itemSize: 12,
                          initialRating: 2,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 30,
                              child: Center(
                                  child: Text(
                                'Add to Card',
                                style: TextStyle(color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 98,
                              height: 30,
                              child: Center(
                                  child: Text(
                                'Add to WishList',
                                style: TextStyle(color: Colors.black),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 175,
                      width: 115.94,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/w2.png'),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adrennes 1944',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Adrennes 1944',
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          '#1 international bestseller.',
                          style: TextStyle(color: Colors.black45),
                        ),
                        RatingBar.builder(
                          itemSize: 12,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 30,
                              child: Center(
                                  child: Text(
                                'Add to Card',
                                style: TextStyle(color: Colors.white),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 98,
                              height: 30,
                              child: Center(
                                  child: Text(
                                'Add to WishList',
                                style: TextStyle(color: Colors.black),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
