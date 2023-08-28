import 'package:firstprojectforportfolio/view/main_page.dart';
import 'package:flutter/material.dart';

class SliderBtn extends StatelessWidget {
  const SliderBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      // height: ,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.deepPurple),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainPage(),
            ),
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Shop Now",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
