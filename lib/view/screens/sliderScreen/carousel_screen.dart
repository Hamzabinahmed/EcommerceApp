
import 'package:firstprojectforportfolio/view/screens/sliderScreen/pages/page1.dart';
import 'package:firstprojectforportfolio/view/screens/sliderScreen/pages/page2.dart';
import 'package:flutter/material.dart';

class CarouselScreen extends StatelessWidget {
  const CarouselScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
