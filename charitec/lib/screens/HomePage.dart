import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 2.0),
            Text(
              'Isaka Dev',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                // backgroundImage: NetworkImage('https://img.freepik.com/free-photo/cascade-boat-clean-china-natural-rural_1417-1356.jpg'),
                backgroundImage: AssetImage('assets/images/isaka-image.jpg'), 
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              color: Colors.green,
            )
          ],
        ),
      ),
      // body: Center(
      //   // child: CircleAvatar(),
      //   // child: Image(image: AssetImage('assets/images/isaka-image.jpg'),)
      //   // child: Image(image:NetworkImage('https://img.freepik.com/free-photo/cascade-boat-clean-china-natural-rural_1417-1356.jpg')),

      // ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search Donors',
                    hintStyle: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(Icons.search),
                    border: const OutlineInputBorder(),
                    fillColor: Colors.green[200],
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                //color: Colors.green,
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-photo/image-person-color-holding-red-heart-their-hands-hands-are-cupped-heart-is-resting-them_1209158-37713.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10.0),
                // gradient:LinearGradient(
                //   begin: Alignment.topRight,
                //   end: Alignment.bottomRight,
                //   colors: [Colors.red,Colors.green]
                //   ),
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ]),
    );
  }
}
