// import 'package:firstprojectforportfolio/components/custom_appbar.dart';
import 'package:firstprojectforportfolio/resources/color.dart';
import 'package:firstprojectforportfolio/view/screens/successful.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 71,
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cart",
                    style: TextStyle(fontSize: 30),
                  ),
                  CircleAvatar(
                    radius: 20,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        color: Colors.red,
                      ),
                      title: const Text("Hello"),
                      subtitle: const Text("How are you"),
                      trailing: const Text("\$25.99"),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Total",
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  "\$25.99",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.tabColor),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentSuccess()));
                  },
                  child: const Text("Pay Now"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
