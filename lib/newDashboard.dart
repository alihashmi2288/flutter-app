import 'package:ecommerceb1/screen2.dart';
import 'package:ecommerceb1/screen3.dart';
import 'package:ecommerceb1/screen4.dart';
import 'package:ecommerceb1/screen5.dart';
import 'package:flutter/material.dart';

class Newdashboardview extends StatefulWidget {
  const Newdashboardview({super.key});

  @override
  State<Newdashboardview> createState() => _NewdashboardviewState();
}

class _NewdashboardviewState extends State<Newdashboardview> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: getcurrentview(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        unselectedItemColor: Colors.red,
        selectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.games_outlined), label: 'games'),
        ],
      ),
    );
  }

  Widget? getcurrentview() {
    if (currentindex == 0) {
      return const Screen2();
    } else if (currentindex == 1) {
      return const Screen3();
    } else if (currentindex == 2) {
      return const Screen4();
    } else {
      return const Screen5();
    }
  }
}
