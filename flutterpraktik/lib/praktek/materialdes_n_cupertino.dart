import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class materialdesign extends StatelessWidget {
  const materialdesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        margin: EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: [
            AppBar(
              title: const Text(
                'contoh cupertino'
              ),
            ),
            CupertinoButton(child: Text('contoh cupertino'), onPressed: (){}),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}