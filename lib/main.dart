import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color.fromRGBO(230, 230, 230, 1)),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(41, 41, 41, 1),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(40, 40, 40, 1),
        ),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(60, 60, 60, 1),
          elevation: 0,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ak"),
          elevation: 10,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.login),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              activeIcon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "2nd Lable",
              activeIcon: Icon(Icons.person_sharp),
            )
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 24,
          selectedIconTheme: IconThemeData(
            color: Colors.orange,
            size: 32,
          ),
        ),
      ),
    );
  }
}
