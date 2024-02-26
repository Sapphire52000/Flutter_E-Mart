import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons({width, height, icon, title, onPress}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 26,
          ),
          10.heightBox,
          Text(
            title,
            style: const TextStyle(
              color: darkFontGrey,
              fontFamily: semibold,
            ),
          )
        ],
      ),
    ),
  );
}
