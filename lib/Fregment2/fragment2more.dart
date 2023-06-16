import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/Fregment2/fragment2add.dart';
import 'package:tab_bar/Fregment2/fragment2working.dart';

class Fragment2more extends StatelessWidget {
  const Fragment2more({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("What is happining?"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.ac_unit),
              text: "I Dont Know",
            ),
            Tab(
              icon: Icon(Icons.phone),
              text: "What is this?",
            ),
            Tab(
              icon: Icon(Icons.countertops),
              text: "What?",
            ),
          ]),
        ),
        body: TabBarView(
            children: [Fragment2more(), Fragment2add(), Fragment2working()]),
      ),
    );
  }
}
