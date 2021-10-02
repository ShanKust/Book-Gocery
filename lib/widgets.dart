import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myTextField({required String hintText, required String labelText}) {
  return TextField(
      decoration: InputDecoration(
    filled: true,
    hintText: hintText,
    labelText: labelText,
    fillColor: Color(0xffEFEFEF),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal),
        borderRadius: BorderRadius.circular(20)),
  ));
}
