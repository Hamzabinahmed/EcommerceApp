import 'package:firstprojectforportfolio/view/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10),
              child: Text("Perfect Situation Purple Long Sleeve Dress"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10),
              child: Text("\$25.99"),
            ),
            const SizedBox(
              height: 40,
              child: TabBar(
                // indicator: BoxDecoration(color: Colors.red),
                labelColor: Colors.black,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
                tabs: [
                  Tab(
                    text: "INFO",
                  ),
                  Tab(
                    text: "MEASUREMENTS",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
              child: SizedBox(
                height: 200,
                child: TabBarView(
                  children: [
                    const Icon(Icons.email),
                    Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Waist"),
                            Text("length"),
                            Text("Breadth"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              sizeNumber("43"),
                              sizeNumber("34"),
                              sizeNumber("76"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ),
            );
          },
          label: const Text("add To Bag"),
        ),
      ),
    );
  }
}

Widget sizeNumber(text) {
  return Container(
    color: Colors.grey.shade200,
    height: 36,
    width: 100,
    child: Center(
      child: Text(
        text,
      ),
    ),
  );
}
