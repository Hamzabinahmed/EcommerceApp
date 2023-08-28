// import 'package:firstprojectforportfolio/view/main_page.dart';
import 'package:firstprojectforportfolio/provider/add_item_provider.dart';
import 'package:firstprojectforportfolio/view/screens/sliderScreen/carousel_screen.dart';
// import 'package:firstprojectforportfolio/view/screens/successful.dart';
// import 'package:firstprojectforportfolio/view/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AddItemProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: CarouselScreen(),
          );
        },
      ),
    );
  }
}
