import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../designs/ResponsiveInfo.dart';

class SaleReportSeller extends StatefulWidget {
   SaleReportSeller() ;

  @override
  _SaleReportSellerState createState() => _SaleReportSellerState();
}

class _SaleReportSellerState extends State<SaleReportSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Sales Resport",style: TextStyle(color: Colors.black,fontSize: ResponsiveInfo.isMobile(context)?18:20),),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                const SizedBox(height: 20),
                _buildSalesChart(),
                const SizedBox(height: 20),
                _buildSalesChart(),
                const SizedBox(height: 20),
                _buildOrdersSection(),
              ],
            ),
          ),
        ),
      ),

    );
  }

  Widget _buildProfileSection() {
    return  Row(


      children: [

        Expanded(child: Row(
          children: [

            Expanded(child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/profile.png'), // Add your profile image here
            ),flex: 1,),
            Expanded(child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Pioneer Constructions',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
                SizedBox(height: 8),

              ],
            ),flex: 2,)


          ],
        ),flex: 2,),

        Expanded(child: Icon(Icons.headphones),flex: 1,)




      ],
    );
  }

  Widget _buildSalesChart() {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text("Today's Sales",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
        SizedBox(height: 15,),
        Container(
          height: 200,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16),
          ),
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: true),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 3),
                    FlSpot(1, 1),
                    FlSpot(2, 4),
                    FlSpot(3, 3),
                    FlSpot(4, 2),
                    FlSpot(5, 5),
                    FlSpot(6, 4),
                  ],
                  isCurved: true,
                  color: Colors.orange,
                  barWidth: 4,
                  belowBarData: BarAreaData(show: false),
                  dotData: FlDotData(show: false),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildShortcuts() {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text("Shortcuts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
        SizedBox(height: 15,),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 10,
          children: [
            _buildShortcutCard('Sales', Icons.bar_chart, Colors.lightBlue),
            _buildShortcutCard('Products', Icons.shopping_bag, Colors.lightGreen),
            _buildShortcutCard('Orders', Icons.shopping_cart, Colors.pinkAccent),
            _buildShortcutCard('Stocks', Icons.inventory, Colors.yellowAccent),
          ],
        ),
      ],
    );
  }

  Widget _buildShortcutCard(String title, IconData icon, Color color) {
    return Card(

      color: color,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrdersSection() {
    return Stack(
      children: [


        Align(
          alignment: FractionalOffset.topCenter,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Text(
                    "Today's Orders",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),flex: 1,),

                  Expanded(child: Stack(

                    children: [
                      Align(
                        alignment: FractionalOffset.topRight,
                        child: Image.asset("assets/homecategory/arrow.png",width: ResponsiveInfo.isMobile(context)?20:25,height: ResponsiveInfo.isMobile(context)?20:25,),
                      )
                    ],
                  ),flex: 1,)

                ],
              )

              ,
              const SizedBox(height: 8),
              _buildOrderItem('Cement Bags (50 KG)', 5, 'Ernakulam'),
              _buildOrderItem('Cement Bags (25 KG)', 2, 'Kottayam'),
              _buildOrderItem('Cement Bags (50 KG)', 5, 'Ernakulam'),
              _buildOrderItem('Cement Bags (25 KG)', 2, 'Kottayam'),
            ],
          ),
        ),
        Align(
          alignment: FractionalOffset.centerRight,
          child:Padding(
            padding: EdgeInsets.fromLTRB(0, ResponsiveInfo.isMobile(context)?80:100, 0, 0),

            child:ClipOval(
              child: Material(
                color: Color(0xff106939), // Button color
                child: InkWell(
                  splashColor: Colors.green, // Splash color
                  onTap: () {},
                  child: SizedBox(width: ResponsiveInfo.isMobile(context)?66:77, height: ResponsiveInfo.isMobile(context)?66:77, child: Icon(Icons.add,color: Colors.white,size: ResponsiveInfo.isMobile(context)?26:40,)),
                ),
              ),
            )  ,
          )

          ,
        )
        ,
      ],
    )


    ;
  }

  Widget _buildOrderItem(String productName, int quantity, String location) {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/homecategory/cementbag.png', width: 50, height: 50), // Add your product image here
        title: Text(productName),
        subtitle: Text('Quantity: $quantity\nOrder from: $location'),
      ),
    );
  }
}
