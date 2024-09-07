

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ super.key });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        //radius of the appbar
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),

      ),
      //
      body:Container(
        width: 303.00,
        height: 500.00,
        
        //shado
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(1.0),
              spreadRadius: 0,
              blurRadius: 0,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Login Page', 
                style: TextStyle(
                  fontSize: 30
                  ),
                  ),
              const SizedBox(height: 20,),
              
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,  
                autocorrect: false,
              ),

              const SizedBox(height: 20,),
              TextButton(
                onPressed: (){},
                child: const Text('Forgot Password?'),
              ),
              ElevatedButton(
                onPressed: (){},
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      )
    );
  }
}