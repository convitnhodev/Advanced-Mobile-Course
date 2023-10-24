import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/frame/sign_in/controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
  
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, left: 50, right: 50 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign in', 
                style: TextStyle(
                  fontSize: 45, 
                  fontWeight: FontWeight.bold
                  
                ),                
              ),

              SizedBox( 
                height: 70,
              ), 
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text('Email'), 
                    const TextField(), 
                    SizedBox(
                      height: 30,
                    ), 
                    const Text('Password'),
                    const TextField(), 
                           SizedBox(
                      height: 30,
                    ), 
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: TextButton(onPressed: (){}, child: const Text('Forgot Password?')),
                    ), 
                    ElevatedButton(onPressed: () {}, child: const Text('Login'))
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
                  IconButton(onPressed: () {}, icon: Image.asset('lib/images/facebook.png')),
                  IconButton(onPressed: () {}, icon: Image.asset('lib/images/google.png')),
                  IconButton(onPressed: () {}, icon: Image.asset('lib/images/phone.png')),
                ],
              ), 

              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member yet?'), 
                    TextButton(onPressed: () {}, child: const Text('Sign up', ))
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