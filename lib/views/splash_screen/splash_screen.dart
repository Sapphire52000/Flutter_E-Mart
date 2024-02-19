import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:emart_app/widget/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            const SizedBox(height: 20),
            applogoWidget(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              appname,
              style: TextStyle(
                fontSize: 22,
                fontFamily: bold,
                color: whiteColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              appversion,
              style: TextStyle(
                color: whiteColor,
              ),
            ),
            const Spacer(),
            const Text(
              credits,
              style: TextStyle(
                color: whiteColor,
                fontFamily: semibold,
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
