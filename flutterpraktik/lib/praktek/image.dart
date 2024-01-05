import 'package:flutter/material.dart';

class image_1 extends StatelessWidget {
  const image_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Image(image: 
      NetworkImage('https://images.fineartamerica.com/images-medium-large-5/schrodinger-wave-equation-science-photo-library.jpg')
      ),
    );
  }
}