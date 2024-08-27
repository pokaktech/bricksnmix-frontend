import 'dart:developer';

import 'package:bricksnmix/Controller/LoginController.dart';
import 'package:bricksnmix/Screens/Account_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Custom_Widget/GoogleCustomwidget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible = true;
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;
  final GlobalKey<FormState> anFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisible = true;
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("--------- rebuilding -------------");
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
                      const SizedBox(height: 10),
                      const Text(
                        "Enter your credentials to access\nyour account",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Sign in your account",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("Username"),
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Password"),
                          InkWell(
                            onTap: () {
                              print("button pressed");
                            },
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 235, 94, 39),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        obscureText: passwordVisible,
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'required';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 10.0),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: const Color.fromARGB(255, 235, 234, 234),
                          hintText: "Enter The Password",
                          hintStyle: const TextStyle(fontSize: 13),
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                      ),
                      const SizedBox(height: 20),
                      Stack(
                        children: [
                          Align(
                            alignment: FractionalOffset.center,
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: Obx(
                                () => ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 235, 94, 39), // background
                                    foregroundColor: Colors.white, // foreground
                                  ),
                                  onPressed: loginController.loading.isTrue
                                      ? null
                                      : () async {
                                          if (anFormKey.currentState!
                                              .validate()) {
                                            await loginController.userSignIn(
                                              usernameController.text,
                                              passwordController.text,
                                              context,
                                            );
                                          }
                                        },
                                  child: loginController.loading.isTrue
                                      ? const CircularProgressIndicator()
                                      : const Text(
                                          'SIGN IN',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                ),
                              ),
                            ),
                          ),
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
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              print("button tapped");
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
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 80),
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
                          ),
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
