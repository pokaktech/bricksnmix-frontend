import 'package:bricksnmix/Const/Colors.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final List<String> images = [
    'masonry-removebg-preview.png',
    'ConcreateReady-removebg-preview.png',
    'ConstructionChemicals-removebg-preview.png',
    'SteelspacersScaffolding-removebg-preview.png',
    'plasterandmoter-removebg-preview.png',
    'precast-removebg-preview.png',
    'drywall-removebg-preview.png',
    'landscape-removebg-preview.png',
    'cement_Sand-removebg-preview.png',
    'whiteewood-removebg-preview.png'
  ];

  final List<String> text = [
    'Masonry',
    'Concrete\nReady',
    'Construction chemicals',
    'Steel, spacer & Scaffolding',
    'Plaster & Mortar',
    'PreCast',
    'Drywall & Gypsum',
    'Landscape',
    'Cement & Sand',
    'White wood'
  ];

  CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = ResponsiveInfo.isMobile(context) ? 5 : 10;

    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling within GridView
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          // crossAxisSpacing: 4.0,
          // mainAxisSpacing: 8.0,
          childAspectRatio: 0.7,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: ResponsiveInfo.isMobile(context) ? 50 : 70,
                height: ResponsiveInfo.isMobile(context) ? 50 : 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF9fddff),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/homecategory/${images[index]}',
                    width: ResponsiveInfo.isMobile(context) ? 50 : 60,
                    height: ResponsiveInfo.isMobile(context) ? 50 : 60,
                  ),
                ),
              ),
              Text(
                text[index],
                maxLines: 2,
                style: TextStyle(
                  fontSize: ResponsiveInfo.isMobile(context) ? 10 : 13,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
