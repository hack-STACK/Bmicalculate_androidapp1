import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterpraktik/praktek/gridview.dart';

class button_1 extends StatelessWidget {
  button_1({super.key});
  Void onPressed() {
    return onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
