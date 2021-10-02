import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  _SearchResultPageState createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  bool _value = false;
  int val = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filters',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text('Cancle'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sort by',
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text("Featured Titles"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (_value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Price: Low to High"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (_value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Price: High to Low"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Publication Date"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("A - Z"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Genre',
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text("Biography"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (_value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Business & Economics"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Children"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Cookery"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Fiction"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Average Customer Review',
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
                title: RatingBar.builder(
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
              ),
              ListTile(
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
                title: RatingBar.builder(
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
              ),
              ListTile(
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = 1;
                    });
                  },
                  activeColor: Colors.green,
                ),
                title: RatingBar.builder(
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
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 56,
                width: 335,
                decoration: BoxDecoration(
                    color: Color(0xff5ABD8C),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Apply",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
