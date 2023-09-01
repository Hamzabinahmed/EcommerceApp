import 'package:ecommerce_web/components/Textfield.dart';
import 'package:ecommerce_web/components/button.dart';
import 'package:ecommerce_web/screens/home_screen.dart';
import 'package:ecommerce_web/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  // login(context) async {
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: email_controller.text, password: password_controller.text);
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //     } else if (e.code == 'wrong-password') {}
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/logo.png"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: MyTextField(
                        controller: email_controller,
                        hintText: "your email",
                        obscureText: false,
                        icon: const Icon(
                          Icons.email,
                          size: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: MyTextField(
                        controller: password_controller,
                        hintText: "password",
                        obscureText: false,
                        icon: const Icon(
                          Icons.lock,
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: MyButton(
                          onPress: () {
                            // login(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          text: "Login"),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Text("OR"),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                        width: 200,
                        child:
                            MyButton(onPress: () {}, text: "Login with Phone")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            elevation: 5),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: const Text("Create account"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
