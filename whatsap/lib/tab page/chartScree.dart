import 'package:flutter/material.dart';
import 'package:whatsap/class%20tsk/call.dart';
import 'package:whatsap/class%20tsk/chart.dart';
import 'package:whatsap/class%20tsk/upadate.dart';

class Tabpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  // List of pages
  final List<Widget> _pages = [
   Chart(),
    Upadate(),
    Call(),

  ];

  // List of titles
  final List<String> _titles = [
    "Chats",
    "Updates",
    "Calls",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 12),
          Icon(Icons.search),
          SizedBox(width: 12),
          Icon(Icons.more_vert),
          SizedBox(width: 12),
        ],
      ),
      */

      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
      ),
    );
  }
}
