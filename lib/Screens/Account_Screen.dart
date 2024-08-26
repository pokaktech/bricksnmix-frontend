import 'dart:ffi';

import 'package:bricksnmix/Controller/CreateAccount.dart';
import 'package:bricksnmix/Custom_Widget/CustomTextformfield.dart';
import 'package:bricksnmix/Custom_Widget/GoogleCustomwidget.dart';
import 'package:bricksnmix/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool is_checked = false;

  @override
  Widget build(BuildContext context) {
    CreateAccountController signupController =
        Get.put(CreateAccountController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                  // height: 100,
                  ),
              const Padding(
                padding: EdgeInsets.only(right: 90.0, top: 70),
                child: Text(
                  "Create Your account",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text("Name"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormfield(
                labelText: 'Enter Your Username',
                ontap: () {},
                isobscure: false,
                controller: signupController.usernameController,
              ),
              const SizedBox(
                height: 15,
              ),

              const Row(
                children: [
                  Text("Email"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormfield(
                labelText: "Enter Your Email",
                controller: signupController.emailController,
                ontap: () {},
                isobscure: false,
              ),
              const SizedBox(
                height: 15,
              ),

              const Row(
                children: [
                  Text("Password"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormfield(
                labelText: "Enter Your Password",
                controller: signupController.passwordController,
                ontap: () {},
                isobscure: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text("Confirm Password"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormfield(
                labelText: "Confirm Password",
                controller: signupController.confirmPasswordController,
                ontap: () {},
                isobscure: true,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: is_checked,
                      onChanged: (val) {
                        setState(() {
                          is_checked = val!;
                        });
                      },
                    ),
                    const Text(" I understand the "),
                    const Text(
                      "terms&policy",
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
              ),

              SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 235, 94, 39), // background
                    foregroundColor: Colors.white, // foreground
                  ),
                  onPressed: () {
                    signupController.userSignup(
                      signupController.usernameController.text,
                      signupController.emailController.text,
                      signupController.passwordController.text,
                    );

                    signupController.usernameController.clear();
                    signupController.emailController.clear();
                    signupController.passwordController.clear();
                    signupController.confirmPasswordController.clear();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: const Text('SIGN UP'),
                ),
              ),

              const Text("or sign up with"),
              const SizedBox(
                height: 10,
              ),

              // SizedBox(height: 10,width: 10,),

              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Googlecustomwidgett(
                    Image: Image.asset(
                      'assets/google....-removebg-preview.png',
                      width: 37,
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
              Row(
                children: [
                  const SizedBox(
                    width: 80,
                  ),
                  const Text("Have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "SIGN IN ",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
