import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),
      appBar: AppBar(
        leadingWidth: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    0, 255, 255, 255), // Button background color

                // Shadow elevation
                elevation: 0,
                // Button padding
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // Minimum size of the button
              ),
              onPressed: () {},
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-photo/3d-account-icon-purpe-backgroundtrend_1029469-218277.jpg?w=740'),
                radius: 50,
              ),
            ),
          ),
        ],
        title: const Text("MauzoYangu"),
        backgroundColor: const Color(0xffFEDB84),
      ),
      drawer: Drawer(
        width: 200.0,
        backgroundColor: const Color(0xffFEDB84),
        child: ListView(
          padding: const EdgeInsets.only(top: 40.0),
          children: [
            Container(
              height: 50,
              color: const Color(0xffFEDB84),
              child: const Center(
                child: Text(
                  "MauzoYangu",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3A1F10),
                  ),
                ),
              ),
            ),
            const Divider(color: Color(0xff3A1F10)),
            Container(
              height: 50,
              padding: const EdgeInsets.only(top: 10),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Center(
                child: Text(
                  "Mauzo Ya Leo",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3A1F10),
                  ),
                ),
              ),
            ),
            const Divider(color: Color(0xff3A1F10)),
            Image.asset(
              "assets/images/mauzo.png",
              width: 100.0,
              height: 100.0,
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 190,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xffFEDB84),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-photo/orange-soft-yellow-drinks-with-strawberry-sliced-lime-mint-glasses_23-2148145338.jpg?'),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: "Nyumbani",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined, color: Colors.black),
            label: "Taarifa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: "Bidhaa",
          ),
        ],
        backgroundColor: const Color(0xffFEDB84),
      ),
    );
  }
}
