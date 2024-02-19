import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget applogoWidget() {
  // using velocity X here
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}


// Widget appLogoWidget() {
//     return Container(
//       width: 77,
//       height: 77,
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Image.asset(icAppLogo),
//     );
//   }