import 'package:flutter/material.dart';

// ignore: must_be_immutable
class scaffold_1 extends StatelessWidget {
  scaffold_1({super.key});
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('you have pressed the button $_count times'),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 50,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => 0,
        tooltip: 'increment counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
