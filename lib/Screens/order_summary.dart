import 'package:flutter/material.dart';

import '../designs/ResponsiveInfo.dart';

class OrderSummary extends StatefulWidget {
   OrderSummary() ;

  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          title: const Text('Order Summary',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // handle back button press
              Navigator.pop(context);
            },

          ),
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {
          //       // handle search button press
          //     },
          //   ),
          //   IconButton(
          //     icon: Icon(Icons.filter_list),
          //     onPressed: () {
          //       // handle filter button press
          //     },
          //   ),
          // ],
        ),
        body:
        Column(
          children: [
            Expanded(child: Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?5:10),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(

                      child: Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?10:14),

                        child: Container(
                          width: double.infinity,
                          height: ResponsiveInfo.isMobile(context)?130:170,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Row(
                                children: [
                                  Expanded(child: Image.asset('assets/homecategory/cementbag.png',width: ResponsiveInfo.isMobile(context)?100:120,
                                    height: ResponsiveInfo.isMobile(context)?100:120,fit: BoxFit.fill,)   ,flex: 1,),
                                  Expanded(child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(padding: EdgeInsets.all(5),

                                        child:Text("Cement Bags 25 kg",maxLines: 2,style: TextStyle(fontSize:ResponsiveInfo.isMobile(context)? 13:15,fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ) ,
                                      )
                                      ,

                                      Padding(padding: EdgeInsets.all(5),
                                        child: Text("Quantity - 1",maxLines: 1,style: TextStyle(fontSize:ResponsiveInfo.isMobile(context)? 11:13,fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        )
                                      )


                                      ,

                                      Padding(padding: EdgeInsets.all(5),

                                        child:Text("\$ 2.0",maxLines: 2,style: TextStyle(fontSize:ResponsiveInfo.isMobile(context)? 17:19,fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ) ,
                                      )
                                      ,






                                    ],
                                  ) ,flex: 2,)
                                ],
                              ),







                            ],
                          ),
                        ),
                      ),
                      onTap: ()
                      {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder:
                        //         (context) =>
                        //         OrderDetailsScreen()
                        //     )
                        // );

                      },
                    )






                    ;
                  }),

            ),flex: 1,),

            Expanded(child: SingleChildScrollView(

            child:Column(

              children: [
                Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,0,ResponsiveInfo.isMobile(context)?20:30,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Expanded(child: Text("Delivery to",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?20:25,fontWeight: FontWeight.bold,color: Colors.black),),flex: 1,),

                      Expanded(child: Stack(

                        children: [

                          Align(
                            alignment: FractionalOffset.topRight,
                            child: Icon(Icons.more_horiz,color: Colors.black,size: ResponsiveInfo.isMobile(context)?30:35,),
                          )

                        ],
                      ),flex: 1,)

                    ],
                  ),



                ),

                Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8,ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8),
                    child:  Text("Expected Delivery Date : 14th April 2024",style: TextStyle(color: Colors.black,fontSize: ResponsiveInfo.isMobile(context)?15:18,fontWeight: FontWeight.w500),maxLines: 1,)),

                Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,0,ResponsiveInfo.isMobile(context)?20:30,0),
                  child:ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?10:14),

                            child: Container(
                                width: double.infinity,

                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.transparent,
                                ),
                                child:


                                ListTile(
                                    leading:  Icon(Icons.radio_button_checked,color: Color(0xff11B13E),size: ResponsiveInfo.isMobile(context)?25:30,),

                                    title: Text("Adam Johns\nHouse Name, Place, District, State\n682352",style: TextStyle(color: Color(0xff231F20),fontSize: ResponsiveInfo.isMobile(context)?14:17,),maxLines: 3,))


                            ));
                      }),

                ),

                Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?30:40,0,ResponsiveInfo.isMobile(context)?30:40,0),
                    child:Container(
                      width: double.infinity,
                      height: ResponsiveInfo.isMobile(context)?210:240,

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.transparent,
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8,ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8),
                              child:  Text("Price Details",style: TextStyle(color: Colors.black,fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,)),

                          Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?8:10),
                            child: Container(width: double.infinity,height: 1,color: Color(0xffCDCBCB),),

                          ),

                          Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8,ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8),
                              child:  Row(

                                children: [
                                  Expanded(child: Text("Original Price",style: TextStyle(color: Color(0xff606060),fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),flex: 1,),
                                  Expanded(child: Stack(
                                    children: [
                                      Align(alignment: FractionalOffset.topRight,
                                        child: Text("\$ 3.20",style: TextStyle(color: Color(0xff606060),fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),

                                      )
                                    ],
                                  )
                                    ,flex: 1,)



                                ],
                              )

                          ),

                          Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8,ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8),
                              child:  Row(

                                children: [
                                  Expanded(child: Text("Offer Price",style: TextStyle(color: Color(0xff606060),fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),flex: 1,),
                                  Expanded(child: Stack(
                                    children: [
                                      Align(alignment: FractionalOffset.topRight,
                                        child: Text("\$ 3.20",style: TextStyle(color: Color(0xff606060),fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),

                                      )
                                    ],
                                  )
                                    ,flex: 1,)



                                ],
                              )

                          ),

                          Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8,ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8),
                              child:  Row(

                                children: [
                                  Expanded(child: Text("Quantity",style: TextStyle(color: Color(0xff606060),fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),flex: 1,),
                                  Expanded(child: Stack(
                                    children: [
                                      Align(alignment: FractionalOffset.topRight,
                                        child: Text("1",style: TextStyle(color: Color(0xff606060),fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),

                                      )
                                    ],
                                  )
                                    ,flex: 1,)



                                ],
                              )

                          ),

                          Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8,ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8),
                              child:  Row(

                                children: [
                                  Expanded(child: Text("Delivery Charge",style: TextStyle(color: Color(0xff606060),fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),flex: 1,),
                                  Expanded(child: Stack(
                                    children: [
                                      Align(alignment: FractionalOffset.topRight,
                                        child: Text("Free",style: TextStyle(color: Colors.black,fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),

                                      )
                                    ],
                                  )
                                    ,flex: 1,)



                                ],
                              )

                          ),
                          Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?8:10),
                            child: Container(width: double.infinity,height: 1,color: Color(0xffCDCBCB),),

                          ),

                          Padding(padding: EdgeInsets.fromLTRB(ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8,ResponsiveInfo.isMobile(context)?20:30,ResponsiveInfo.isMobile(context)?5:8),
                              child:  Row(

                                children: [
                                  Expanded(child: Text("SUB TOTAL",style: TextStyle(color: Colors.black,fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),flex: 1,),
                                  Expanded(child: Stack(
                                    children: [
                                      Align(alignment: FractionalOffset.topRight,
                                        child: Text("\$ 4.50",style: TextStyle(color: Colors.black,fontSize: ResponsiveInfo.isMobile(context)?12:14,fontWeight: FontWeight.bold),maxLines: 1,),

                                      )
                                    ],
                                  )
                                    ,flex: 1,)



                                ],
                              )

                          ),






                        ],
                      ),

                    )

                ),
                GestureDetector(

                  onTap: (){

                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            OrderSummary()
                        )
                    );
                  },
                  child: Padding(

                    child: Container(

                        width: double.infinity,
                        height: ResponsiveInfo.isMobile(context)?50:60,
                        decoration: BoxDecoration(

                          border: Border.all(
                            color: Color(0xffFF6624),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xffFF6624),
                        ),
                        child:  Stack(

                          children: [
                            Align(
                              alignment: FractionalOffset.center,
                              child: Text("Place Order",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?14:17,color: Colors.white),),
                            )
                          ],
                        )




                    ),
                    padding: EdgeInsets.all(20),
                  ) ,
                ),






              ],

            ) ,
            )




              ,flex: 3,),





          ],
        )





    );
  }
}
