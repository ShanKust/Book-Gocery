import 'package:flutter/material.dart';

class SearchPage1 extends StatelessWidget {
  const SearchPage1({Key? key}) : super(key: key);

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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  suffixIcon: Icon(Icons.cancel),
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search Books, Authors, or ISBN',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Previous Searches'),
                  ),
                  for (int i = 0; i < 5; i++)
                    ListTile(
                      leading: Icon(Icons.search),
                      title: Text('Search 1'),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text('Items'),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
