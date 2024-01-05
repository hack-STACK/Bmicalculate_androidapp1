import 'package:flutter/material.dart';

class gridview1 extends StatelessWidget {
  const gridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            height: 400,
            width: 1000,
            child: const Text(
              "1",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            height: 400,
            width: 1000,
            child: const Text(
              "1",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            height: 200,
            width: 200,
            child: const Text(
              "1",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Container(
            color: Colors.black,
            alignment: Alignment.center,
            height: 200,
            width: 200,
            child: const Text(
              "1",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Container(
            color: Colors.grey,
            alignment: Alignment.center,
            height: 200,
            width: 200,
            child: const Text(
              "1",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Container(
            color: Colors.brown,
            alignment: Alignment.center,
            height: 200,
            width: 200,
            child: const Text(
              "1",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
