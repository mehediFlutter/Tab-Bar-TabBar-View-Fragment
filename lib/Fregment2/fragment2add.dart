import 'package:flutter/material.dart';

class Fragment2add extends StatelessWidget {
  const Fragment2add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("I Am Add"),
      ),
      body: Center(child: Text("I Am Body Add")),
    );
  }
}
