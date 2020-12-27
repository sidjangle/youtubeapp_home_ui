import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Widget content(String images, String text) {
  return Column(
    children: [
      Stack(
        children: [
          Image.asset(images),
          Positioned.fill(
              bottom: 10,
              right: 10,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Text(
                    '25:11',
                    style: TextStyle(
                        backgroundColor: Colors.black, color: Colors.white),
                  ),
                ),
              )),
          SizedBox(height: 10)
        ],
      ),
      Container(
        color: Color(0xff282828),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/codetodo.png'),
          ),
          title: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text('Codetodo . 1 crors views . 3 days ago',
              style: TextStyle(color: Colors.grey[400])),
        ),
      )
    ],
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/white.png',
            width: 100,
          ),
          backgroundColor: Color(0xff282828),
          actions: [
            IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
                  child: Column(
            children: [
              content('assets/flutter.jpg',
                  'Flutter App Layout Quick Start Tutorial | Understanding (Rows And Columns)'),
                  content('assets/indexdb.jpg',
                  'How To Create IndexedDB to store data in browser | (Angular 9 | Javascript )'),
                  content('assets/flutter.jpg',
                  'Flutter App Layout Quick Start Tutorial | Understanding (Rows And Columns)'),
            ],
          ),
        ),
// bottom bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff282828),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: 0,
          iconSize: 23,
          unselectedFontSize: 10,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: 'Subscription'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: 'Library')
          ],
        ),
      ),
    );
  }
}
