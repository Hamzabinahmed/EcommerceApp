import 'package:ecommerce_web/components/Textfield.dart';
import 'package:ecommerce_web/components/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController semail_controller = TextEditingController();
  TextEditingController spassword_controller = TextEditingController();

  signup(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: semail_controller.text,
        password: spassword_controller.text,
      );
      Navigator.pop(context);
      print("User Addes Successfully");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xfff3009cd),
        title: const Text("Signup"),
      ),
      body: Center(
        child: SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Card(
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MyTextField(
                    controller: semail_controller,
                    hintText: "register email",
                    obscureText: false,
                    icon: const Icon(
                      Icons.email,
                      size: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MyTextField(
                    controller: semail_controller,
                    hintText: "register paswword",
                    obscureText: false,
                    icon: const Icon(
                      Icons.visibility_off,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                    width: 150,
                    child: MyButton(
                        onPress: () {
                          // signup(context);
                        },
                        text: "Signup")),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("I'have already account"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
