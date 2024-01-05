import 'package:flutter/material.dart';

class containerwidget extends StatelessWidget {
  const containerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contoh button")),
      body: Column(
        children: [       
            Container(
            padding: EdgeInsets.only(left: 20), 
            margin: EdgeInsets.all(50),
            height: 200,
            width: 200,
            alignment: Alignment.topLeft,
            color: Colors.grey,
            child: Text('semangat belajar', style: TextStyle(fontSize: 20, color: Colors.white),),
          ),   
          //  Container(
          //   height: MediaQuery.of(context).size.height - 130,
          //   alignment: Alignment.bottomCenter,
          //   child: Text(
          //     "semangat guntur",
          //     style: TextStyle(fontSize: 20),
          //   ),
          // ),
          // // Container(
          //     child: ElevatedButton(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.red,
          //     foregroundColor: Colors.white,
          //   ),
          //   child: Text(
          //     "send to guntur",
          //     style: TextStyle(fontSize: 20),
          //   ),
          // )),
   
  
        ],
      ),
    );
  }
}
