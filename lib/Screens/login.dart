import 'dart:developer';

import 'package:bricksnmix/Controller/LoginController.dart';
import 'package:bricksnmix/Screens/Account_Screen.dart';
import 'package:bricksnmix/Screens/Home.dart';
import 'package:bricksnmix/generated/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Custom_Widget/GoogleCustomwidget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
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
                          fontSize: 32,
                          color: Appcolors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Enter your credentials to access\nyour account",
                        style: TextStyle(
                          fontSize: 14,
                          color: Appcolors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Sign in your account",
                        style: TextStyle(
                          fontSize: 26,
                          color: Appcolors.black,
                          fontWeight: FontWeight.w600,
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
                            vertical: 16.0,
                            horizontal: 10.0,
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Appcolors.white,
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
                                color: Appcolors.forestGreen,
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
                          fillColor: Appcolors.white,
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
                      const SizedBox(height: 35),
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
                                    backgroundColor: Appcolors.forestGreen,
                                    foregroundColor: Appcolors.white,
                                  ),
                                  // onPressed: () =>
                                  //     Get.offAll(() => const HomeScreen()),
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
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Appcolors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
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
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // const SizedBox(width: 20),
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
                          InkWell(
                            onTap: () {},
                            child: Googlecustomwidgett(
                              Image: Image.asset(
                                'assets/facebook.....-removebg-preview.png',
                                width: 37,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Googlecustomwidgett(
                              Image: Image.asset(
                                'assets/twitter...-removebg-preview.png',
                                width: 37,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // const SizedBox(width: 80),
                          const Text(
                            "Don't Have an account?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
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
                                color: Appcolors.forestGreen,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
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
