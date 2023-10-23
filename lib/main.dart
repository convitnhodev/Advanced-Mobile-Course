import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Myapp()));
}



class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
  
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 50, right: 50 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign in', 
                style: TextStyle(
                  fontSize: 30
                ),                
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text('Email'), 
                    const TextField(), 
                    const Text('Password'),
                    const TextField(), 
                    TextButton(onPressed: (){}, child: const Text('Forgot Password?')), 
                    ElevatedButton(onPressed: () {}, child: const Text('Login'))
                  ],
                ),
                color: Colors.yellow,
              ), 
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Divider(color: Colors.black),
                ),
              ), 
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.abc)), 
                  IconButton(onPressed: () {}, icon: const Icon(Icons.abc)), 
                  IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
                ],
              ), 

              Row(
                children: [

                  const Text('Not a member yet?'), 
                  TextButton(onPressed: () {}, child: const Text('Sign up', ))
                ],

              ),
            ],

          ),
        ),
      ),
    );
  }
}