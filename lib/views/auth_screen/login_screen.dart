import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/auth_screen/singup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widget/applogo_widget.dart';
import 'package:emart_app/widget/bg_widget.dart';
import 'package:emart_app/widget/custom_textfield.dart';
import 'package:emart_app/widget/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: context.screenHeight * 0.1,
              ),
              applogoWidget(),
              const SizedBox(
                height: 15,
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
                height: 30,
              ),
              Container(
                width: context.screenWidth - 50,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(3, 3), // 그림자의 위치 조정 (가로, 세로)
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    customTextField(title: email, hint: emailHint),
                    customTextField(title: password, hint: passwordHint),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(forgetPass),
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth - 50,
                      child: ourButton(
                        title: login,
                        color: redColor,
                        textColor: whiteColor,
                        onPress: () {
                          Get.to(
                            () => const Home(),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      createNewAccount,
                      style: TextStyle(
                        color: fontGrey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: context.screenWidth - 50,
                      child: ourButton(
                        title: signup,
                        color: lightGolden,
                        textColor: redColor,
                        onPress: () {
                          Get.to(() => const SignupScreen());
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      loginWith,
                      style: TextStyle(
                        color: fontGrey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 35,
                            child: Image.asset(
                              socialIconList[index],
                              width: 40,
                            ),
                          ),
                        ),
                      ),
                    )
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
