import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widget/applogo_widget.dart';
import 'package:emart_app/widget/bg_widget.dart';
import 'package:emart_app/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: context.screenHeight * 0.11,
              ),
              applogoWidget(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Log in to $appname",
                style: TextStyle(
                  fontFamily: bold,
                  color: whiteColor,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: context.screenWidth - 50,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    customTextField(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
