import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> Organizations = [
      'UN',
      'WHO',
      'UNICEF',
      'UNESCO',
      'UNDP',
      'UNHCR',
      'UNFPA',
      'UNODC',
      'UNOPS',
      'IMG',
      'UNIDO',
      'UNWTO',
    ];
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
              'Nicolous Dev',
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
      body: ListView.builder(
        itemCount: Organizations.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(Organizations[index], style: TextStyle(fontSize: 20)),
            subtitle: Text('Organization'),
            leading: CircleAvatar(
              child: Text(Organizations[index].substring(0, 1)),
            ),
          );
        },
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
