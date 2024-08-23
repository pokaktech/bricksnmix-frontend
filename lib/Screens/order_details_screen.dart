import 'package:flutter/material.dart';

import '../Widgets/order_info.dart';
import '../Widgets/order_status.dart';
import '../Widgets/price_details.dart';

class OrderDetailsScreen extends StatefulWidget {
   OrderDetailsScreen() ;

  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context);
          },
        ),
        title: Text('Orders Details',style: TextStyle(fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderStatus(),
              SizedBox(height: 16),
              OrderInfo(),
              // SizedBox(height: 16),
              // ContactButtons(),
              SizedBox(height: 16),
              PriceDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
