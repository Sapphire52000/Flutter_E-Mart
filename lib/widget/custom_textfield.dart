import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customTextField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        email,
        style: TextStyle(
          color: redColor,
          fontFamily: semibold,
          fontSize: 16,
        ),
      ),
      const SizedBox(height: 5),
      TextFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: fontGrey,
          ),
          hintText: emailHint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: redColor),
          ),
        ),
      ),
    ],
  );
}
