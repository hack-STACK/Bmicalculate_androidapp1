import 'package:flutter/material.dart';

class listview1 extends StatelessWidget {
  const listview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.green,
            alignment: Alignment.topLeft,
            child: const Text(
              "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Container(
            color: Colors.black,
            alignment: Alignment.topLeft,
            child: const Text(
              "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            height: 400.0,
            width: 300.0,
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.topLeft,
            child: const Text(
              "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            height: 200.0,
            width: 200.0,
          ),
        ],
      ),
    );
  }
}
