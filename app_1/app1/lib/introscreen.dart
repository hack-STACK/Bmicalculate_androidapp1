import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class introductionScreen extends StatelessWidget {
  introductionScreen({super.key});

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {

   
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              Container(
            color: Colors.black,
          ),
             Container(
            color: Colors.white,
          ),
             Container(
            color: Colors.red,
          ),
            ],
          ),
          Container(
            alignment: Alignment(0,0.8),
            child: SmoothPageIndicator(controller: _pageController, count: 3)
            )
          
          // CONTROLLER       
        ],
      
        ),
      );
  }
}