import 'package:bricksnmix/Screens/cart_screen.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:bricksnmix/generated/appColors.dart';
import 'package:flutter/material.dart';

class AppbarWidgett extends StatefulWidget {
  const AppbarWidgett({super.key});

  @override
  State<AppbarWidgett> createState() => _AppbarWidgettState();
}

class _AppbarWidgettState extends State<AppbarWidgett> {
  final List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    var screeenSize = MediaQuery.of(context).size;
    var width = screeenSize.width;
    var height = screeenSize.height;
    return SizedBox(
      width: double.infinity,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.08,
          ),
          const CircleAvatar(
            foregroundImage: AssetImage(
              'assets/bricksnmixlogo.jpg',
            ),
          ),
          SizedBox(
            width: width * 0.10,
          ),
          const Icon(
            Icons.location_on,
            color: Appcolors.forestGreen,
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
            width: width * 0.06,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Appcolors.black,
            ),
          ),
          SizedBox(
            width: width * 0.03,
          ),
          InkWell(
            onTap: () => print("cart pressed"),
            child: const Icon(
              Icons.shopping_cart,
              color: Appcolors.black,
            ),
          ),
        ],
      ),
    );
  }
}
