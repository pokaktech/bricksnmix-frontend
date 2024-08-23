import 'package:bricksnmix/Screens/Account_Screen.dart';
import 'package:bricksnmix/Screens/Home.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';

import '../Custom_Widget/CustomTextformfield.dart';
import '../Custom_Widget/GoogleCustomwidget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email=new TextEditingController();
  TextEditingController Password=new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

        children: [

          Align(
            alignment: FractionalOffset.topLeft,
            child: Padding(padding: EdgeInsets.only(left: 0,top: ResponsiveInfo.isMobile(context)?80:110,right: 0,bottom: 0),

            child: SingleChildScrollView(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?10:15),

                    child: Text("Hey, Hello 👋",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?28:33,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?10:15),

                    child: Text("Enter your credentials to access\nyour account",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?14:17,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?10:15,ResponsiveInfo.isMobile(context)?20:30,0,0),

                    child: Text("Sign in your account",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?14:17,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding:  EdgeInsets.all(ResponsiveInfo.isMobile(context)?10:15),
                    child: Text("Email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Padding(padding: EdgeInsets.only(left:ResponsiveInfo.isMobile(context)?15:20,right: ResponsiveInfo.isMobile(context)?15:20,bottom: 0,top: 0),

                    child:
                    CustomTextFormfield(
                        labelText: "anagha@gmail.com",
                        controller:email,

                        ontap: () {},
                        isobscure: true),)

                  ,
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?10:15),
                    child: Text("Password"),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left:ResponsiveInfo.isMobile(context)?15:20,right: ResponsiveInfo.isMobile(context)?15:20,bottom: 0,top: 0),
                    child:

                    CustomTextFormfield(
                        labelText: "**********",
                        controller: Password,

                        ontap: () {},
                        isobscure: true),),

        Stack(
          children: [

            Align(
              alignment: FractionalOffset.center,
              child: Padding(
                padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?15:20),
                child:   Container(
                  width: double.infinity,
                  height: ResponsiveInfo.isMobile(context)?50:70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 235, 94, 39), // background
                      foregroundColor: Colors.white, // foreground
                    ),
                    onPressed: () {


                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) =>
                              HomeScreen()
                          )
                      );

                    },
                    child: Text('SIGN IN',style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?14:17),),
                  ),
                ),),
            )
          ],
        )

        ,

                  Align(
                    alignment: FractionalOffset.center,
                    child:Text("or sign in with",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?12:15)) ,
                  )

                  ,
                  SizedBox(height: 10,),



                  // SizedBox(height: 10,width: 10,),

                  Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?10:15),

                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Googlecustomwidgett(Image:  Image.asset('assets/google....-removebg-preview.png',width: 37,),     ),
                      Googlecustomwidgett(Image:  Image.asset('assets/facebook.....-removebg-preview.png',width: 37,),     ),
                      Googlecustomwidgett(Image:  Image.asset('assets/twitter...-removebg-preview.png',width: 37,),     )


                    ],
                  ),
                  )

                  ,
                  Row(
                    children: [
                      SizedBox(width: 80,),
                      Text("Don't Have an account?",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?12:15)),

                      TextButton(onPressed: (){

                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context) =>
                                CreateAccount()
                            )
                        );

                      }, child:Text("SIGN UP ",style: TextStyle(color: Colors.orange,fontSize: ResponsiveInfo.isMobile(context)?12:15),) )
                    ],
                  ),



                ],
              ),
            )




            ),
          )


        ],
      )




    );
  }
}
