import 'dart:developer';

import 'package:bricksnmix/Controller/LoginController.dart';
import 'package:bricksnmix/Screens/Account_Screen.dart';
import 'package:bricksnmix/Screens/Home.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Custom_Widget/CustomTextformfield.dart';
import '../Custom_Widget/GoogleCustomwidget.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log("--------- rebuilding -------------");
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    LoginController loginController = Get.put(LoginController());
    final anFormKey = GlobalKey<FormState>();
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: FractionalOffset.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 80,
                right: 15,
                bottom: 0,
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: anFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hey, Hello 👋",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Enter your credentials to access\nyour account",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Sign in your account",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Username"),
                      const SizedBox(
                        height: 10,
                      ),

                      TextFormField(
                        obscureText: false,
                        controller: usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'required';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color.fromARGB(255, 235, 234, 234),
                          hintText: "Enter The Username",
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                      ),

                      // CustomTextFormfield(
                      //   labelText: "Enter The Username",
                      //   controller: usernameController,
                      //   ontap: () {},
                      //   isobscure: false,
                      // ),
                      const SizedBox(
                        height: 10,
                      ),

                      const Text("Password"),
                      const SizedBox(
                        height: 10,
                      ),

                      // CustomTextFormfield(
                      //   labelText: "Enter The Password",
                      //   controller: passwordController,
                      //   ontap: () {},
                      //   isobscure: true,
                      // ),

                      TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'required';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color.fromARGB(255, 235, 234, 234),
                          hintText: "Enter The Password",
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Stack(
                        children: [
                          Align(
                            alignment: FractionalOffset.center,
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                      255, 235, 94, 39), // background
                                  foregroundColor: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  if (anFormKey.currentState!.validate()) {
                                    loginController.userSignIn(
                                      usernameController.text,
                                      passwordController.text,
                                      context,
                                    );

                                    // Get.back();

                                    usernameController.clear();
                                    passwordController.clear();
                                  }
                                },
                                child: const Text(
                                  'SIGN IN',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      const Align(
                        alignment: FractionalOffset.center,
                        child: Text(
                          "or sign in with",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // SizedBox(height: 10,width: 10,),

                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              print("button tappped");
                            },
                            child: Googlecustomwidgett(
                              Image: Image.asset(
                                'assets/google....-removebg-preview.png',
                                width: 37,
                              ),
                            ),
                          ),
                          Googlecustomwidgett(
                            Image: Image.asset(
                              'assets/facebook.....-removebg-preview.png',
                              width: 37,
                            ),
                          ),
                          Googlecustomwidgett(
                            Image: Image.asset(
                              'assets/twitter...-removebg-preview.png',
                              width: 37,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 80,
                          ),
                          const Text(
                            "Don't Have an account?",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CreateAccount(),
                                ),
                              );
                            },
                            child: const Text(
                              "SIGN UP ",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
