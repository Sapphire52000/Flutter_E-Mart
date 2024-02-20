import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customTextField({String? title, String? hint, controllor}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title!,
        style: const TextStyle(
          color: redColor,
          fontFamily: semibold,
          fontSize: 16,
        ),
      ),
      const SizedBox(height: 5),
      TextFormField(
        controller: controllor,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: fontGrey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: redColor),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
    ],
  );
}
