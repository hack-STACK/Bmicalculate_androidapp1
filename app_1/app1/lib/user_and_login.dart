import 'package:flutter/material.dart';

class Textfieldak extends StatelessWidget {
  final controller;
  final String hinttxt;
  final bool obscureText;
  


  const Textfieldak ({
  super.key, 
  required this.controller, 
  required this.hinttxt, 
  required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: 
                    Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: hinttxt,
                ),
              ),
            );
            
  }
}