import 'package:bricksnmix/Screens/Slidbarscreen.dart';
import 'package:bricksnmix/Screens/cart_screen.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';

class AppbarWidgett extends StatefulWidget {
  @override
  _AppbarWidgettState createState() => _AppbarWidgettState();
}

class _AppbarWidgettState extends State<AppbarWidgett> {
  final List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // decoration: BoxDecoration(
      //     color:const Color.fromARGB(224, 255, 255, 255),
      //     borderRadius: BorderRadius.circular(60)
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: ResponsiveInfo.isMobile(context) ? 15 : 25,
          ),
          const CircleAvatar(
            foregroundImage: AssetImage(
              'assets/bricksnmixlogo.jpg',
            ),
          ),
          SizedBox(
            width: ResponsiveInfo.isMobile(context) ? 20 : 30,
          ),
          const Icon(
            Icons.location_on,
            color: Color.fromARGB(255, 3, 110, 57),
          ),
          DropdownButton<String>(
            value: selectedValue,
            hint: const Text('Kerala,india'),
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
          SizedBox(
            width: ResponsiveInfo.isMobile(context) ? 10 : 15,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Color.fromARGB(255, 3, 110, 57),
            ),
          ),
          InkWell(
            onTap: () => print("cart pressed"),
            child: Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 3, 110, 57),
              ),
          ),
          // IconButton(
          //   onPressed: () {
          //     print("pressed");
          //     Navigator.pushReplacement(context,
          //         MaterialPageRoute(builder:
          //             (context) =>
          //             CartScreen()
          //         )
          //     );
          //   },
          //   icon: const Icon(
          //     Icons.shopping_cart,
          //     color: Color.fromARGB(255, 3, 110, 57),
          //   ),
          // )
        ],
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: AppbarWidgett(),
//   ));
// }
