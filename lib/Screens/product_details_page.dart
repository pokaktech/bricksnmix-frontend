import 'package:bricksnmix/Controller/ProductDetailsController.dart';
import 'package:bricksnmix/generated/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsController productDetailsController =
        Get.put(ProductDetailsController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 30,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/homecategory/cementbag.png',
                              height: 192,
                              width: 190,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Cement Bags',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.yellow),
                              const SizedBox(width: 4),
                              const Text(
                                '4.9',
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                '(374 Reviews)',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Appcolors.grey,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Appcolors.forestGreen,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'Most sold',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Text(
                                '\$3.20',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Appcolors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '\$2.50',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Appcolors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Appcolors.red,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  '-30%',
                                  style: TextStyle(color: Appcolors.white),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Delivery in 2-3 Days',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Appcolors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Appcolors.pastelOrange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Lorem ipsum dolor sit amet consectetur. Eu condimentum quisque sit posuere placerat ullamcorper at venenatis.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Appcolors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Quantity',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),

                          Container(
                            height: 38,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Appcolors.darkMagenta,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                
                                Container(
                                  color: Colors.red,
                                  height: 38,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 35,
                                        color: Appcolors.black,
                                      ),
                                    ),
                                  ],)
                                ),
                                SizedBox(
                                  
                                  height: 38,
                                  child: Center(
                                    child: Text(
                                      "0",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Appcolors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 38,
                                  child: Center(
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Appcolors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Row(
                          //   children: [
                          //     ElevatedButton(
                          //       onPressed: () {
                          //         productDetailsController.decreaseCount();
                          //       },
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Colors.grey[300],
                          //         foregroundColor: Colors.black,
                          //         minimumSize: const Size(40, 40),
                          //       ),
                          //       child: const Text('-'),
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.symmetric(
                          //           horizontal: 16.0),
                          //       child: Obx(
                          //         () {
                          //           return Text(
                          //             productDetailsController.cartCount
                          //                 .toString(),
                          //             style: const TextStyle(fontSize: 18),
                          //           );
                          //         },
                          //       ),
                          //     ),
                          //     ElevatedButton(
                          //       onPressed: () {
                          //         productDetailsController.increaseCount();
                          //       },
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Colors.grey[300],
                          //         foregroundColor: Colors.black,
                          //         minimumSize: const Size(40, 40),
                          //       ),
                          //       child: const Text('+'),
                          //     ),
                          //   ],
                          // ),
                          const SizedBox(height: 16),
                          const Text(
                            'Reviews (374)',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'adfdd',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Textt',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Buy Now'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
