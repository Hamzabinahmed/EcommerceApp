import 'package:ecommerce_web/components/slider_text.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // SLIDER 1
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/slider1.jpeg"),
                  fit: BoxFit.fill),
            ),
            child: const Center(
              child: SizedBox(
                width: 300,
                height: 500,
                child: SLiderText(
                  text1: "1",
                  text2: "Featured",
                  text3: "Tailored",
                  text4: "Jimmy Chukaexploring new spring sweater collection",
                ),
              ),
            ),
          ),
          // SLIDER 2
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/slider2.jpeg"),
                  fit: BoxFit.fill),
            ),
            child: const Center(
              child: SizedBox(
                width: 300,
                height: 500,
                child: SLiderText(
                  text1: "2",
                  text2: "Featured",
                  text3: "Tailored",
                  text4: "Jimmy Chukaexploring new spring sweater collection",
                ),
              ),
            ),
          ),
          // SLIDER 3
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/slider3.jpeg"),
                  fit: BoxFit.fill),
            ),
            child: const Center(
              child: SizedBox(
                width: 300,
                height: 500,
                child: SLiderText(
                  text1: "3",
                  text2: "Featured",
                  text3: "Tailored",
                  text4: "Jimmy Chukaexploring new spring sweater collection",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
