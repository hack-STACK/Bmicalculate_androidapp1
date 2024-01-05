  import 'package:flutter/material.dart';

  class transform_decoration extends StatelessWidget {
    const transform_decoration ({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("Home"),
          ),
          body: Container(
            decoration: BoxDecoration(image: const DecorationImage(image: NetworkImage('https://pixnio.com/free-images/2017/03/07/2017-03-07-10-59-39-900x600.jpg'
          ), fit: BoxFit.fitWidth,
          ),
          border: Border.all(
            color: Colors.black,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12)
            ),
            height: 200,
            width: 200,
            margin: EdgeInsets.all(20),
          )
      );
    }
  }