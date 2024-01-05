import 'package:flutter/material.dart';

class stack1 extends StatelessWidget {
  const stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.green,
            alignment: Alignment.bottomCenter,
            child: const Text("satu" , style: TextStyle(fontSize: 30, color: Colors.white),),
          ),
                 Container(
            color: Colors.red,
            alignment: Alignment.bottomCenter,
            child: const Text("dua" , style: TextStyle(fontSize: 30, color: Colors.white),),
            height: 400.0,
            width: 300.0,

          ),
          
                 Container(
            color: Colors.deepPurple,
            alignment: Alignment.bottomCenter,
            child: const Text("tiga" , style: TextStyle(fontSize: 30, color: Colors.white),)
            , height: 200.0,
              width: 200.0,

          ),
          
        ],
      ),
    );
  }
}