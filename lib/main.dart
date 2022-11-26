import 'package:flutter/material.dart';
import './TabBar/Chat_blade.dart' as chats;
import './TabBar/Panggilan_blade.dart' as panggilan;
import './TabBar/ProfileBisnis_blade.dart' as profileBisnis;
import './TabBar/Status_blade.dart' as status;

void main() {
  runApp(MaterialApp(
    title: "Membuat Tab Bar",
    home: new HomeApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 59, 68, 95),
      appBar: new AppBar(
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 74, 81, 101),
        title: Text(
          "WhatsApp Busineess",
          style: TextStyle(
              fontFamily: 'Serif', fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 30.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          Icon(
            Icons.more_vert,
            size: 30,
          )
        ],
        bottom: new TabBar(
          controller: _controller,
          tabs: [
            new Tab(
              icon: Icon(Icons.add_business_outlined),
            ),
            new Tab(
              icon: Icon(Icons.chat),
            ),
            new Tab(
              icon: Icon(Icons.restore),
            ),
            new Tab(
              icon: Icon(Icons.call),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          new profileBisnis.ProfileBisnis(),
          new chats.Chat(),
          new status.Status(),
          new panggilan.Panggilan()
        ],
      ),
    );
  }
}
