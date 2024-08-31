import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlidebarSection extends StatefulWidget {
  const SlidebarSection({super.key});

  @override
  State<SlidebarSection> createState() => _SlidebarSectionState();
}

class _SlidebarSectionState extends State<SlidebarSection> {
  final Adsimages = [
    Image.asset('assets/salepage.jpg'),
    Image.asset('assets/shoppage.jpg'),
    Image.asset('assets/salepage.jpg'),
    Image.asset('assets/shoppage.jpg'),
  ];
  int AdsCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(microseconds: 800),
            autoPlayInterval: const Duration(seconds: 2),
            autoPlay: true,
            //  height: 200,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                AdsCurrentIndex = index;
              });
            },
          ),
          items: Adsimages,
        ),
        AnimatedSmoothIndicator(
          activeIndex: AdsCurrentIndex,
          count: Adsimages.length,
          effect: const WormEffect(
            dotWidth: 12,
            dotHeight: 12,
            dotColor: Colors.grey,
            // spacing: 2,
            activeDotColor: Colors.black,
            paintStyle: PaintingStyle.fill,
          ),
        ),
      ],
    );
  }
}
