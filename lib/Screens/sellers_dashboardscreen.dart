import 'package:bricksnmix/Screens/sale_report_seller.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class SellersDashboardscreen extends StatefulWidget {
   SellersDashboardscreen() ;

  @override
  _SellersDashboardscreenState createState() => _SellersDashboardscreenState();
}

class _SellersDashboardscreenState extends State<SellersDashboardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProfileSection(),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      foregroundColor: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                _buildSalesChart(),
                const SizedBox(height: 20),
                _buildShortcuts(),
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
          childAspectRatio: 1.65,
          children: [
            _buildShortcutCard('Sales', "assets/salesgraph.png", Color(0xff9FDDFF),Color(0xff3881A9)),
            _buildShortcutCard('Products', "assets/goods.png", Color(0xffDCFFA2),Color(0xff6D8743)),
            _buildShortcutCard('Orders', "assets/box.png", Color(0xffFFB5D9),Color(0xffE44C96)),
            _buildShortcutCard('Stocks', "assets/stock.png", Color(0xffFFFCB5),Color(0xff9E9A25)),
          ],
        ),
      ],
    );
  }

  Widget _buildShortcutCard(String title, String icon, Color color,Color textcolor) {
    return Card(

      color: color,
      child: InkWell(
        onTap: () {
          if(title.compareTo("Sales")==0)
            {

              // Navigator.push(context,
              //     MaterialPageRoute(builder:
              //         (context) =>
              //         SaleReportSeller()
              //     )
              // );
            }


        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(icon,width: ResponsiveInfo.isMobile(context)?30:35,height: ResponsiveInfo.isMobile(context)?30:35,),
              const SizedBox(height: 10),
              Text(
                title,
                style:  TextStyle(fontSize: ResponsiveInfo.isMobile(context)?14:17, color: textcolor),
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
