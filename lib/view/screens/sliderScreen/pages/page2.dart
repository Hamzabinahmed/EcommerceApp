import 'package:flutter/material.dart';

import '../components/slider_text.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/slider2.jpeg"),
          fit: BoxFit.fill,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const SliderText(
          no: '2',
          text: 'Christain Lobi ',
          text2: " shpwing us his new summer beach wears"),
    );
  }
}
