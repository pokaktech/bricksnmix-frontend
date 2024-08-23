import 'package:bricksnmix/Custom_Widget/CustomTextformfield.dart';
import 'package:bricksnmix/Custom_Widget/GoogleCustomwidget.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool is_checked = false;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var controller;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
                // height: 100,
                ),
            const Padding(
              padding: EdgeInsets.only(right: 90.0, top: 70),
              child: Text(
                "Create Your account",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 280.0),
              child: Text("Name"),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormfield(
              labelText: 'Username',
              ontap: () {},
              isobscure: false,
              controller: name,
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 280.0),
              child: Text("Email"),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormfield(
                labelText: "anagha@gmail.com",
                controller: email,
                ontap: () {},
                isobscure: true),
            const SizedBox(
              height: 10,
            ),

            const Padding(
              padding: EdgeInsets.only(right: 250.0),
              child: Text("Password"),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormfield(
              labelText: "**********",
              controller: Password,
              ontap: () {},
              isobscure: true,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200.0),
              child: Text("Confirmpassword"),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormfield(
              labelText: "*********",
              controller: confirmpassword,
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
                onPressed: () {},
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
    );
  }
}
