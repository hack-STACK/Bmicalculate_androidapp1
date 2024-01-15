import 'dart:math';

import 'package:finance_app/src/constants/image_string.dart';
import 'package:finance_app/src/constants/sized.dart';
import 'package:finance_app/src/constants/text_string.dart';
import 'package:finance_app/src/features/authentication/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/src/utils/theme/theme.dart'; // Replace with the actual path to your NAappTheme file

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

bool animate = false;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _startanimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: animate ? 100: 300,
              left: defsize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Appname,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    Taglineapp,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom:  animate? 0: 150,
              right: 1,
              left: 1,
             
              child: Image(
                image: AssetImage(Splashscreen1),
                height: 500,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _startanimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 5000));
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => const welcome()));
  }
}
