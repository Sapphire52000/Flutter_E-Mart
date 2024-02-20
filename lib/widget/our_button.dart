import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton() {
  return ElevatedButton(
      onPressed: () {},
      child: const Text(
        login,
        style: TextStyle(color: whiteColor, fontFamily: bold),
      ));
}
