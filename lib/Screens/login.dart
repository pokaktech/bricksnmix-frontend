import 'dart:math';

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
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: FractionalOffset.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 0,
                top: ResponsiveInfo.isMobile(context) ? 80 : 110,
                right: 0,
                bottom: 0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                          ResponsiveInfo.isMobile(context) ? 10 : 15),
                      child: Text(
                        "Hey, Hello 👋",
                        style: TextStyle(
                          fontSize: ResponsiveInfo.isMobile(context) ? 28 : 33,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        ResponsiveInfo.isMobile(context) ? 10 : 15,
                      ),
                      child: Text(
                        "Enter your credentials to access\nyour account",
                        style: TextStyle(
                          fontSize: ResponsiveInfo.isMobile(context) ? 14 : 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        ResponsiveInfo.isMobile(context) ? 10 : 15,
                        ResponsiveInfo.isMobile(context) ? 20 : 30,
                        0,
                        0,
                      ),
                      child: Text(
                        "Sign in your account",
                        style: TextStyle(
                          fontSize: ResponsiveInfo.isMobile(context) ? 14 : 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        ResponsiveInfo.isMobile(context) ? 10 : 15,
                      ),
                      child: const Text("Email"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: ResponsiveInfo.isMobile(context) ? 15 : 20,
                        right: ResponsiveInfo.isMobile(context) ? 15 : 20,
                        bottom: 0,
                        top: 0,
                      ),
                      child: CustomTextFormfield(
                        labelText: "enter the email",
                        controller: loginController.emailController,
                        ontap: () {},
                        isobscure: false,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: EdgeInsets.all(
                        ResponsiveInfo.isMobile(context) ? 10 : 15,
                      ),
                      child: const Text("Password"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: ResponsiveInfo.isMobile(context) ? 15 : 20,
                        right: ResponsiveInfo.isMobile(context) ? 15 : 20,
                        bottom: 0,
                        top: 0,
                      ),
                      child: CustomTextFormfield(
                        labelText: "Enter the Password",
                        controller: loginController.passwordController,
                        ontap: () {},
                        isobscure: true,
                      ),
                    ),

                    Stack(
                      children: [
                        Align(
                          alignment: FractionalOffset.center,
                          child: Padding(
                            padding: EdgeInsets.all(
                              ResponsiveInfo.isMobile(context) ? 15 : 20,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height:
                                  ResponsiveInfo.isMobile(context) ? 50 : 70,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                      255, 235, 94, 39), // background
                                  foregroundColor: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()),
                                  );
                                },
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                    fontSize: ResponsiveInfo.isMobile(context)
                                        ? 14
                                        : 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    Align(
                      alignment: FractionalOffset.center,
                      child: Text(
                        "or sign in with",
                        style: TextStyle(
                            fontSize:
                                ResponsiveInfo.isMobile(context) ? 12 : 15),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // SizedBox(height: 10,width: 10,),

                    Padding(
                      padding: EdgeInsets.all(
                          ResponsiveInfo.isMobile(context) ? 10 : 15),
                      child: Row(
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
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 80,
                        ),
                        Text(
                          "Don't Have an account?",
                          style: TextStyle(
                            fontSize:
                                ResponsiveInfo.isMobile(context) ? 12 : 15,
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
                          child: Text(
                            "SIGN UP ",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize:
                                  ResponsiveInfo.isMobile(context) ? 12 : 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
