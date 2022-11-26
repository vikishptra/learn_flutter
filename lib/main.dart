import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basic',
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(100, 244, 105, 1),
        leading: Icon(
          Icons.account_circle,
          size: 30.0,
          color: Colors.black,
        ),
        title: Text(
          "Contact",
          style: TextStyle(
              fontFamily: 'Serif',
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30.0,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Column(
              children: [
                Icon(
                  Icons.home,
                  size: 80.0,
                ),
                Text(
                  "Home",
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
