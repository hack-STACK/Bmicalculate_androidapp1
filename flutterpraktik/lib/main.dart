import 'package:flutter/material.dart';
import 'package:flutterpraktik/news/news.dart';
import 'package:flutterpraktik/praktek/button.dart';
import 'package:flutterpraktik/praktek/column_row.dart';
import 'package:flutterpraktik/praktek/container.dart';
import 'package:flutterpraktik/praktek/dataandtime.dart';
import 'package:flutterpraktik/praktek/dialog.dart';
import 'package:flutterpraktik/praktek/dialog1.dart';
import 'package:flutterpraktik/praktek/gridview.dart';
import 'package:flutterpraktik/praktek/image.dart';
import 'package:flutterpraktik/praktek/listviiew.dart';
import 'package:flutterpraktik/praktek/materialdes_n_cupertino.dart';
import 'package:flutterpraktik/praktek/scaffold.dart';
import 'package:flutterpraktik/praktek/stack.dart';
import 'package:flutterpraktik/praktek/text_widget.dart';
import 'package:flutterpraktik/praktek/textinput.dart';
import 'package:flutterpraktik/praktek/transform.dart';
import 'package:flutterpraktik/praktek/transform_decoration.dart';
import 'praktek/row_and_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:news_1(),
    );
  }
}