import 'package:flutter/material.dart';
import 'package:mauzoapp/screens/HomePage.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffFEDB84),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "MauzoYangu",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3A1F10)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Image(
              image: AssetImage("assets/images/mauzo.png"),
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Pangilia Mauzo, Weka Kumbukumbu",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3A1F10)),
            ),
            const SizedBox(
              height: 40,
            ),
            //elevated button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFFFFFF),
                //WIDTH OF THE BUTTON
                minimumSize: const Size(200, 30),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text(
                "Endelea",
                style: TextStyle(fontSize: 20, color: Color(0xff3A1F10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
