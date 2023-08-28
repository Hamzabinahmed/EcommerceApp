import 'package:firstprojectforportfolio/view/screens/sliderScreen/components/btn.dart';
import 'package:flutter/material.dart';

class SliderText extends StatelessWidget {
  const SliderText(
      {super.key, required this.no, required this.text, required this.text2});
  final String no;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.white),
              children: [
                const TextSpan(
                  text: 'No',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: no,
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Featured",
            style: TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          const Text(
            "Tailored",
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, bottom: 10),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 20, color: Colors.white),
                children: [
                  TextSpan(
                    text: text,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: text2),
                ],
              ),
            ),
          ),
          const SliderBtn(),
        ],
      ),
    );
  }
}
