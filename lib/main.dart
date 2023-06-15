import 'package:flutter/material.dart';
import 'package:tab_bar/Fragment/Alarm.dart';
import 'package:tab_bar/Fragment/Email.dart';
import 'package:tab_bar/Fragment/Home.dart';
import 'package:tab_bar/Fragment/Mode.dart';
import 'package:tab_bar/Fragment/More.dart';
import 'package:tab_bar/Fragment/Phone.dart';
import 'package:tab_bar/Fragment/Settings.dart';
import 'package:tab_bar/Fragment/Shop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My App "),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              // we can create this way our icon tap
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.contact_phone),
                text: "Phone",
              ),
              Tab(
                icon: Icon(Icons.alarm),
                text: "Alarm",
              ),
              Tab(
                icon: Icon(Icons.shop),
                text: "Shop",
              ),
              Tab(
                icon: Icon(Icons.email),
                text: "email",
              ),
              Tab(
                icon: Icon(Icons.mode),
                text: "Mode",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settings",
              ),
              Tab(
                icon: Icon(Icons.more),
                text: "More",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Phone(),
            Alarm(),
            Shop(),
            Email(),
            Mode(),
            Settings(),
            More(),
          ],
        ),
      ),
    );
  }
}
