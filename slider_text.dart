import 'package:ecommerce_web/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SLiderText extends StatelessWidget {
  const SLiderText({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            const Text(
              "NO",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Colors.white),
            ),
            Text(
              text1,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 51,
                  color: Colors.white),
            ),
          ],
        ),
        Text(
          text2,
          style: const TextStyle(
              fontWeight: FontWeight.w800, fontSize: 24, color: Colors.blue),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            text3,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 30, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SizedBox(
            width: 320,
            child: Text(
              text4,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.transparent,
                side: const BorderSide(color: Colors.white, width: 2),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Shop Now",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
