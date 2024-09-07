import 'package:charitec/screens/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CharitecApp());
}

class CharitecApp extends StatelessWidget {
  const CharitecApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charitec',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home:const LoginPage(),
    );
  }
}

