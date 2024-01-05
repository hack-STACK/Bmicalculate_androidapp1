
import 'package:finance_app/src/constants/image_string.dart';
import 'package:finance_app/src/constants/sized.dart';
import 'package:finance_app/src/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/src/utils/theme/theme.dart';// Replace with the actual path to your NAappTheme file

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
 bool animate =false;
class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 88,
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
            const Positioned(child: Image(image: AssetImage(Splashscreen1),height: 500,),
            bottom: 150,right: 1,left: 1,)
          ],
        ),
      ),
    );
  }
}
