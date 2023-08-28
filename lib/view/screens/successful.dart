import 'package:firstprojectforportfolio/resources/color.dart';
import 'package:firstprojectforportfolio/view/main_page.dart';
// import 'package:firstprojectforportfolio/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.teal,
                ),
                const Text(
                  "Payment Successful",
                  style: TextStyle(fontSize: 25),
                ),
                const Text(
                  "Your order will be ready in 5 days, including shipping, more details and options for tracking will be sent to your email ",
                  textAlign: TextAlign.center,
                ),
                const Text('Thanks!!'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.tabColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  },
                  child: const Text("Continue Shopping"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
