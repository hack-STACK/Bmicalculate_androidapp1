import 'package:flutter/material.dart';

class gambar extends StatelessWidget {
  const gambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Container (height: 50),
        ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.
        inversePrimary,
        title: Text("Home"),
      ),
      body: Image(image: AssetImage("saihu/95203055_p0_master1200.jpg")),
    );
    
  }
}