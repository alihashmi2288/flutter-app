import 'package:flutter/material.dart';

class Newdasdboradv2 extends StatefulWidget {
  const Newdasdboradv2({super.key});

  @override
  State<Newdasdboradv2> createState() => _Newdasdboradv2State();
}

class _Newdasdboradv2State extends State<Newdasdboradv2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.dashboard),
            ),
            Tab(
              icon: Icon(Icons.favorite_outline),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: const Center(child: Text('THIS IS HOME')),
          ),
          Container(
            child: const Center(child: Text('THIS IS DASHBOARD')),
          ),
          Container(
            child: const Center(child: Text('THIS IS FAVOURITE')),
          )
        ]),
      ),
    );
  }
}
