import 'package:bricksnmix/Screens/order_summary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../designs/ResponsiveInfo.dart';

class CartScreen extends StatefulWidget {
   CartScreen() ;

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: const Text('My Cart',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
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
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(

                        child: Padding(padding: EdgeInsets.all(ResponsiveInfo.isMobile(context)?5:8),

                          child: Container(
                            width: double.infinity,
                            height: ResponsiveInfo.isMobile(context)?170:210,
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

                                          child:Text("AAC Blocks",maxLines: 2,style: TextStyle(fontSize:ResponsiveInfo.isMobile(context)? 13:15,fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ) ,
                                        )
                                        ,

                                        Padding(padding: EdgeInsets.all(5),
                                          child: Container(
                                            width: ResponsiveInfo.isMobile(context)?120:150,
                                            padding: EdgeInsets.all(3),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.green),
                                            child: Row(
                                              children: [
                                                Expanded(child: InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 16,
                                                    )),flex: 1,)

                                                ,
                                                Expanded(child: Container(
                                                  margin: EdgeInsets.symmetric(horizontal: 3),
                                                  padding:
                                                  EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(3),
                                                      color: Colors.white),
                                                  child: Stack(

                                                    children: [
                                                      Align(
                                                        alignment: FractionalOffset.center,
                                                        child: Text(
                                                          '3',
                                                          style: TextStyle(color: Colors.black, fontSize: 16),
                                                        ),
                                                      )
                                                    ],
                                                  )


                                                  ,
                                                ),flex: 1,)


                                                ,
                                                Expanded(child: InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 16,
                                                    )),flex: 1,)


                                                ,
                                              ],
                                            ),
                                          ),
                                        )


                                        ,

                                        Padding(padding: EdgeInsets.all(5),

                                          child:Text("Unit Price : 250",maxLines: 2,style: TextStyle(fontSize:ResponsiveInfo.isMobile(context)? 13:15,fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ) ,
                                        )
                                        ,
                                        Padding(padding: EdgeInsets.all(5),
                                          child: Text("Total Price : 750",maxLines: 2,style: TextStyle(fontSize:ResponsiveInfo.isMobile(context)? 13:15,fontWeight: FontWeight.bold),
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


                        },
                      )






                      ;
                    }),

              ),flex: 5,),

              Expanded(child: Card(
              child:Row(

                children: [

                  Expanded(child: Padding(

                      padding: EdgeInsets.all(8),
                      child:


                      Text("Total Amount : 2500",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?14:17,color: Colors.black87),)),flex: 2,),
                  Expanded(child: GestureDetector(

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
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.red,
          ),
          child:  Stack(

            children: [
              Align(
                alignment: FractionalOffset.center,
                child: Text("Confirm",style: TextStyle(fontSize: ResponsiveInfo.isMobile(context)?14:17,color: Colors.white),),
              )
            ],
          )




      ),
      padding: EdgeInsets.all(8),
    ) ,
    )



                    ,flex: 1,)


                ],
              ) ,
                elevation: 8,
              )

              ,flex: 1,)



            ],
          )





    );
  }
}
