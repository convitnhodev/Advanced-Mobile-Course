import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/style/color.dart';
import 'package:flutter_application_1/pages/frame/sign_in/controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, left: 50, right: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign in',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryText),
              ),
              const Text(
                'Welcome to LetTutor',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20, color: AppColor.primaryText),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.primaryText, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.primaryText, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: 'Email',
                          hintStyle: TextStyle(fontWeight: FontWeight.w200, color: AppColor.primaryText)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                           focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.primaryText, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.primaryText, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: 'Passowrd',
                          hintStyle: TextStyle(fontWeight: FontWeight.w200, color: AppColor.primaryText)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password?')),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.fromWidth(60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), 
                          side: BorderSide(
                            color: AppColor.primaryText
                          )
                        )
                      ),
                      onPressed: () {},
                       child: const Text('Login'))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(9),
                child: SizedBox(
                  child: Divider(color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('lib/images/facebook.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('lib/images/google.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('lib/images/phone.png')),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member yet?'),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign up',
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
