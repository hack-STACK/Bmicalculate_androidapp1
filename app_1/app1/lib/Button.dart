import 'package:flutter/material.dart';

class my_button extends StatelessWidget {
  final Function()? onTap;
  const my_button({super.key , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.black,
        borderRadius: BorderRadius.circular(12)),
        child: const Center(
          child: Text("Masuk",
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16),),
          
          
          ),
        ),
    );
  }
}