import 'package:bricksnmix/Controller/CreateAccountController.dart';
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
  late final TextEditingController usernameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;
  final GlobalKey<FormState> anFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    CreateAccountController signupController =
        Get.put(CreateAccountController());

    final anFormKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
        child: SingleChildScrollView(
          child: Form(
            key: anFormKey,
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 234, 234),
                    hintText: "Enter The Username",
                    hintStyle: TextStyle(fontSize: 13),
                  ),
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
                TextFormField(
                  obscureText: false,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 234, 234),
                    hintText: "Enter The Email",
                    hintStyle: TextStyle(fontSize: 13),
                  ),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 234, 234),
                    hintText: "Enter The Password",
                    hintStyle: TextStyle(fontSize: 13),
                  ),
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
                TextFormField(
                  obscureText: false,
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 234, 234),
                    hintText: "Enter The Confirm Password",
                    hintStyle: TextStyle(fontSize: 13),
                  ),
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
                      if (anFormKey.currentState!.validate()) {
                        print("-------------------------------------------");
                        signupController.userSignup(
                          usernameController.text,
                          emailController.text,
                          passwordController.text,
                        );
                      }
                    },
                    child: signupController.loading.isTrue
                        ? const CircularProgressIndicator()
                        : const Text(
                            'SIGN IN',
                            style: TextStyle(fontSize: 14),
                          ),
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
                      onPressed: () {
                        Get.offAll(() => const Login());
                      },
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
      ),
    );
  }
}
