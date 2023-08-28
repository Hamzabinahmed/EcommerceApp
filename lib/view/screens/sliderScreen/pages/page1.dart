import 'package:firstprojectforportfolio/view/screens/sliderScreen/components/slider_text.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/slider1.jpeg"),
          fit: BoxFit.fill,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const SliderText(
          no: '1',
          text: 'Jimmy Chuka',
          text2: " exploring new spring sweter collection"),
    );
  }
}
