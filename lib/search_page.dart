import 'dart:ui';
import 'package:book_grocer/search1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                      MaterialPageRoute(builder: (context) => SearchPage1()),
                    );
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    suffixIcon: Icon(Icons.settings),
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search Books, Authors, or ISBN',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Genre',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        'New Release',
                        style: TextStyle(color: Colors.black45, fontSize: 18),
                      ),
                      Text(
                        'The Arts',
                        style: TextStyle(color: Colors.black45, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 150),
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Align(
                            child: Text(
                              'Biography',
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          height: 202,
                          width: 158,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/x.png'),
                                  fit: BoxFit.fitHeight),
                              color: Color(0xffB7143C),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Align(
                            child: Text(
                              'Business',
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          height: 202,
                          width: 158,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/x2.png'),
                                  fit: BoxFit.fitHeight),
                              color: Color(0xffE6A500),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Align(
                            child: Text(
                              'Children',
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          height: 202,
                          width: 158,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/x3.png')),
                              color: Color(0xffEF4C45),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Align(
                            child: Text(
                              'Cookery',
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          height: 202,
                          width: 158,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/x2.png'),
                                  fit: BoxFit.fitHeight),
                              color: Color(0xffF46217),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Align(
                            child: Text(
                              'Fiction',
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          height: 202,
                          width: 158,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/x5.png'),
                                  fit: BoxFit.fitHeight),
                              color: Color(0xff09ADE2),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Align(
                            child: Text(
                              'Graphic Novels',
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          height: 202,
                          width: 158,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/x4.png'),
                                  fit: BoxFit.fitHeight),
                              color: Color(0xffD36A43),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                  ],
                  padding: EdgeInsets.all(10),
                  shrinkWrap: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
