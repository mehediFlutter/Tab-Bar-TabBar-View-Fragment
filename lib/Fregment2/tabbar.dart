import 'package:flutter/material.dart';
import 'package:tab_bar/Fregment2/fragment2add.dart';
import 'package:tab_bar/Fregment2/fragment2mail.dart';
import 'package:tab_bar/Fregment2/fragment2working.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.mail),
                text: "Mail",
              ),
              Tab(
                icon: Icon(Icons.work),
                text: "Working",
              ),
              Tab(
                icon: Icon(Icons.add),
                text: "Add",
              ),
              Tab(
                icon: Icon(Icons.more),
                text: "More",
              )
            ],
          ),
        ),
        body: TabBarView(
            children: [Fragment2mail(), Fragment2working(), Fragment2add()]),
      ),
    );
  }
}
