import 'package:bricksnmix/Screens/sellers_dashboardscreen.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';

class SellersHomepage extends StatefulWidget {
   SellersHomepage() ;

  @override
  _SellersHomepageState createState() => _SellersHomepageState();
}

class _SellersHomepageState extends State<SellersHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Stack(

          children:[

            Align(
              alignment: FractionalOffset.topCenter,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // buildSection(
                        //   'Find more customers.',
                        //   'images/findcustomer.png', // replace with your actual image path
                        // ),
                        // buildSection(
                        //   'Increase Sales.',
                        //   'images/increase sales.png', // replace with your actual image path
                        // ),
                        Expanded(child:    Image.asset("assets/homecategory/findcustomers.png"),flex: 1,)
                        ,

                        Expanded(child: Container(
                          height: ResponsiveInfo.isMobile(context)?200:230,
                          width: ResponsiveInfo.isMobile(context)?150:180,
                          decoration: BoxDecoration(
                              color: Color(0xffFF6624),
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(100),
                                  bottomStart: Radius.circular(100))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment:MainAxisAlignment.center,children: [
                            Text(
                              "Find\nMore\nCustomers",
                              style: TextStyle(
                                fontSize:ResponsiveInfo.isMobile(context)? 18:22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                          ),
                        ),flex: 1,)
                        ,
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Container(
                          height: ResponsiveInfo.isMobile(context)?200:230,
                          width: ResponsiveInfo.isMobile(context)?150:180,
                          decoration: BoxDecoration(
                              color: Color(0xffFF6624),
                              borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(100),
                                  bottomEnd: Radius.circular(100))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.center,children: [
                            Text(
                              "Increase\nSales",
                              style: TextStyle(
                                fontSize:ResponsiveInfo.isMobile(context)? 18:22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                          ),
                        ),flex: 1,)

                        ,

                        Expanded(child: Image.asset("assets/homecategory/find2.png"),flex: 1,)

                        ,
                      ],
                    ),
                    flex: 1,
                  ),

                  Expanded(child: Stack(

                    children: [

                      Align(
                        alignment: FractionalOffset.center,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: ResponsiveInfo.isMobile(context)?60:75,
                            child: ElevatedButton(
                              onPressed: () {

                                Navigator.push(context,
                                    MaterialPageRoute(builder:
                                        (context) =>
                                        SellersDashboardscreen()
                                    )
                                );


                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffFF6624), // Button color
                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                textStyle: TextStyle(fontSize: 18),
                              ),
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )


                  ,flex: 1,)

                  ,
                ],
              ),
            )



          ]


        )



    );
  }
}
