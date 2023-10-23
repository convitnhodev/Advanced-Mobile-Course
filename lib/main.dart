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
          padding: const EdgeInsets.only(top: 100, left: 50, right: 50 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign in', 
                style: TextStyle(
                  fontSize: 30
                ),                
              ),

              SizedBox( 
                height: 100,
              ), 
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text('EMAIL'), 
                    const TextField(), 
                    SizedBox(
                      height: 30,
                    ), 
                    const Text('PASSWORD'),
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
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Divider(color: Colors.black),
                ),
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.abc)), 
                  IconButton(onPressed: () {}, icon: const Icon(Icons.abc)), 
                  IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
                ],
              ), 

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
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