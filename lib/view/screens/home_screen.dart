import 'package:firstprojectforportfolio/components/custom_appbar.dart';
import 'package:firstprojectforportfolio/view/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(),
            const Padding(
              padding: EdgeInsets.only(top: 7.0),
              child: Text("Top 250 products"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetail(),
                    ),
                  );
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return const CustomCard();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
