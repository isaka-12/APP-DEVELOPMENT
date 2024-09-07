import 'package:charitec/screens/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key}); // constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Container(
      width:MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      color: Colors.green,
      
      
      child: Padding(
        
        padding: const EdgeInsets.all(20.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Login to Charitec',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0
          ),
          Icon(
            Icons.account_circle, 
            size: 100.0, 
            color: Colors.white,),
            SizedBox(
              height: 20.0
              ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white38,
                filled: true,
                
                label: Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  ),
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                
                ),
              ),
              
            ),
            SizedBox(
              height: 20.0
              ),
             TextField(
              
              decoration: InputDecoration(
                fillColor: Colors.white38,
                filled: true,
                label: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                
                ),
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            SizedBox(
              height: 20.0
            ),
            
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Homepage())); 
              }, 
              child: Text("Login",
              style: TextStyle(
                color: Colors.green,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 45.0),
              backgroundColor: Colors.white,
              ),   
            ),    
        ],
      ),
      ),
     )
    );
  }
}
