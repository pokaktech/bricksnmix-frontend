// import 'package:flutter/material.dart';
//
// class EditProfile extends StatefulWidget {
//   const EditProfile({super.key});
//
//   @override
//   State<EditProfile> createState() => _EditProfileState();
// }
//
// class _EditProfileState extends State<EditProfile> {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController _namecontroller = TextEditingController();
//     TextEditingController _aboutcontroller = TextEditingController();
//     TextEditingController _phonecontroller = TextEditingController();
//     TextEditingController _locationcontroller = TextEditingController();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Edit Profile",
//           style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
//         ),
//         leading: Icon(Icons.arrow_back),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Complete Your Profile",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 24,
//                   fontWeight: FontWeight.w600),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               "Let's know yu get better.This will help us connect you with right customers",
//               style: TextStyle(fontSize: 14),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               "Buisness Name",
//               style: TextStyle(
//                   color: Color(
//                     0xff6F6F6F,
//                   ),
//                   fontSize: 16),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0xffF0F2F5),
//               ),
//               child: TextFormField(
//                 controller: _namecontroller,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Buisness name',
//                   hintStyle: TextStyle(fontSize: 13),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Text(
//               "About Your Buisness",
//               style: TextStyle(color: Color(0xff6F6F6F), fontSize: 16),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               height: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0xffF0F2F5),
//               ),
//               child: TextFormField(
//                 controller: _aboutcontroller,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Tell Customers About Your Buisness',
//                   hintStyle: TextStyle(fontSize: 13),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Text(
//               "Phone Number",
//               style: TextStyle(
//                   color: Color(
//                     0xff6F6F6F,
//                   ),
//                   fontSize: 16),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0xffF0F2F5),
//               ),
//               child: TextFormField(
//                 controller: _phonecontroller,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Phone Number',
//                   hintStyle: TextStyle(fontSize: 13),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Text(
//               "Location",
//               style: TextStyle(
//                   color: Color(
//                     0xff6F6F6F,
//                   ),
//                   fontSize: 16),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0xffF0F2F5),
//               ),
//               child: TextFormField(
//                 controller: _locationcontroller,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Location',
//                   hintStyle: TextStyle(fontSize: 13),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             Container(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xffFF6624),
//
//                   elevation: 5, // Elevation
//                   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 child: Text(
//                   'Update',
//                   style: TextStyle(
//                       fontSize: 16, color: Colors.white), // Text style
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// //3rd edit antony
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// //
// // class ShoppingPage extends StatefulWidget {
// //   @override
// //   _ShoppingPageState createState() => _ShoppingPageState();
// // }
// //
// // class _ShoppingPageState extends State<ShoppingPage> {
// //   List<Product> products = [
// //     Product(
// //       name: 'Cement Bags',
// //       price: 2.50,
// //       image: 'images/cement.png',
// //       rating: 4.5,
// //       reviews: 120,
// //       isWishlisted: false,
// //     ),
// //     Product(
// //       name: 'Cement Bags',
// //       price: 2.50,
// //       image: 'images/cement.png',
// //       rating: 4.5,
// //       reviews: 120,
// //       isWishlisted: false,
// //     ),
// //     Product(
// //       name: 'Cement Bags',
// //       price: 2.80,
// //       image: 'images/cement.png',
// //       rating: 4.0,
// //       reviews: 100,
// //       isWishlisted: false,
// //     ),
// //   ];
// //
// //   void toggleWishlist(int index) {
// //     setState(() {
// //       products[index].isWishlisted = !products[index].isWishlisted;
// //     });
// //   }
// //
// //   int _selectedIndex = 0;
// //   int _selectedFilterIndex = -1;
// //
// //   void _onBottomNavigationItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }
// //
// //   void _onFilterButtonTapped(int index) {
// //     setState(() {
// //       _selectedFilterIndex = index;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar:   AppBar(
// //         title: Column(
// //           children: [
// //
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //               child: Container(
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(15),
// //                   color: Colors.cyan,
// //                 ),
// //                 child: TextFormField(
// //                   decoration: InputDecoration(
// //                     hintText: 'Search',
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(8.0),
// //                       borderSide: BorderSide.none,
// //                     ),
// //                     filled: true,
// //                     fillColor: Colors.white,
// //                     suffixIcon: Icon(Icons.search),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //         leading: Icon(Icons.arrow_back),
// //
// //       ),
// //
// //       body: Column(
// //         children: [
// //           SingleChildScrollView(
// //             scrollDirection: Axis.horizontal,
// //             child: Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   _buildFilterButton(0, 'Top Rated'),
// //                   _buildFilterButton(1, 'Offers'),
// //                   _buildFilterButton(2, 'Price: Low'),
// //                   _buildFilterButton(3, 'Price: High'),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: GridView.builder(
// //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                 crossAxisCount: 2,
// //                 childAspectRatio: 0.7,
// //                 crossAxisSpacing: 8,
// //                 mainAxisSpacing: 8,
// //               ),
// //               itemCount: products.length,
// //               itemBuilder: (context, index) {
// //                 return ProductCard(
// //                   product: products[index],
// //                   toggleWishlist: () => toggleWishlist(index),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.sort),
// //             label: 'Sort By',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.filter_list),
// //             label: 'Filter',
// //           ),
// //         ],
// //         currentIndex: _selectedIndex,
// //         onTap: _onBottomNavigationItemTapped,
// //       ),
// //     );
// //   }
// //
// //   Widget _buildFilterButton(int index, String text) {
// //     return ElevatedButton(
// //       onPressed: () => _onFilterButtonTapped(index),
// //       style: ElevatedButton.styleFrom(
// //         foregroundColor: Colors.black, backgroundColor: Colors.white, side: BorderSide(
// //         color: _selectedFilterIndex == index ? Colors.orange : Colors.transparent,
// //         width: 2,
// //       ), // Text color
// //       ),
// //       child: Text(text),
// //     );
// //   }
// // }
//
// // class Product {
// //   final String name;
// //   final double price;
// //   final String image;
// //   final double rating;
// //   final int reviews;
// //   bool isWishlisted;
// //
// //   Product({
// //     required this.name,
// //     required this.price,
// //     required this.image,
// //     required this.rating,
// //     required this.reviews,
// //     this.isWishlisted = false,
// //   });
// // }
// //
// // class ProductCard extends StatelessWidget {
// //   final Product product;
// //   final VoidCallback toggleWishlist;
// //
// //   ProductCard({required this.product, required this.toggleWishlist});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       child: Stack(
// //         children: [
// //           Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Image.asset(product.image, fit: BoxFit.cover, height: 150),
// //               Padding(
// //                 padding: const EdgeInsets.all(8.0),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       product.name,
// //                       style: TextStyle(
// //                           fontSize: 16, fontWeight: FontWeight.bold),
// //                     ),
// //                     SizedBox(height: 8),
// //                     Row(
// //                       children: [
// //                         Icon(Icons.star, color: Colors.yellow, size: 16),
// //                         Text('${product.rating}'),
// //                         Text('(${product.reviews} reviews)'),
// //                       ],
// //                     ),
// //                     SizedBox(height: 8),
// //                     Text(
// //                       '\$${product.price}',
// //                       style: TextStyle(
// //                           fontSize: 16, fontWeight: FontWeight.w800),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //           Positioned(
// //             top: 8,
// //             right: 8,
// //             child: IconButton(
// //               icon: Icon(
// //                 product.isWishlisted
// //                     ? Icons.favorite
// //                     : Icons.favorite_border,
// //                 color:
// //                 product.isWishlisted ? Colors.red : Colors.grey,
// //               ),
// //               onPressed: toggleWishlist,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
// // import 'package:flutter/material.dart';
//
// // class ProductDetailPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back),
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //         ),
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.favorite),
// //             onPressed: () {},
// //           ),
// //         ],
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Center(
// //                 child: Image.asset(
// //                   'images/cement.png',
// //                   height: 200,
// //                 ),
// //               ),
// //               SizedBox(height: 16),
// //               Text(
// //                 'Cement Bags',
// //                 style: TextStyle(
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               Row(
// //                 children: [
// //                   Icon(Icons.star, color: Colors.yellow),
// //                   SizedBox(width: 4),
// //                   Text(
// //                     '4.9',
// //                     style: TextStyle(fontSize: 18),
// //                   ),
// //                   SizedBox(width: 4),
// //                   Text(
// //                     '(374 Reviews)',
// //                     style: TextStyle(fontSize: 18, color: Colors.grey),
// //                   ),
// //                   Spacer(),
// //                   Container(
// //                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
// //                     decoration: BoxDecoration(
// //                       color: Colors.green,
// //                       borderRadius: BorderRadius.circular(4),
// //                     ),
// //                     child: Text(
// //                       'Most sold',
// //                       style: TextStyle(color: Colors.white),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               SizedBox(height: 8),
// //               Row(
// //                 children: [
// //                   Text(
// //                     '\$3.20',
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       color: Colors.grey,
// //                       decoration: TextDecoration.lineThrough,
// //                     ),
// //                   ),
// //                   SizedBox(width: 8),
// //                   Text(
// //                     '\$2.50',
// //                     style: TextStyle(
// //                       fontSize: 24,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               SizedBox(height: 4),
// //               Row(
// //                 children: [
// //                   Container(
// //                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
// //                     decoration: BoxDecoration(
// //                       color: Colors.red,
// //                       borderRadius: BorderRadius.circular(4),
// //                     ),
// //                     child: Text(
// //                       '-30%',
// //                       style: TextStyle(color: Colors.white),
// //                     ),
// //                   ),
// //                   SizedBox(width: 8),
// //                   Text(
// //                     'Delivery in 2-3 Days',
// //                     style: TextStyle(fontSize: 16, color: Colors.grey),
// //                   ),
// //                 ],
// //               ),
// //               SizedBox(height: 16),
// //               Text(
// //                 'Description',
// //                 style: TextStyle(
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               SizedBox(height: 8),
// //               Container(
// //                 padding: EdgeInsets.all(8),
// //                 color: Colors.orange[100],
// //                 child: Text(
// //                   'Lorem ipsum dolor sit amet consectetur. Eu condimentum quisque sit posuere placerat ullamcorper at venenatis.',
// //                   style: TextStyle(fontSize: 16, color: Colors.black),
// //                 ),
// //               ),
// //               SizedBox(height: 16),
// //               Text(
// //                 'Quantity',
// //                 style: TextStyle(
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               SizedBox(height: 8),
// //               Row(
// //                 children: [
// //                   ElevatedButton(
// //                     onPressed: () {},
// //                     child: Text('-'),
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.grey[300],
// //                       foregroundColor: Colors.black,
// //                       minimumSize: Size(40, 40),
// //                     ),
// //                   ),
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //                     child: Text(
// //                       '2',
// //                       style: TextStyle(fontSize: 18),
// //                     ),
// //                   ),
// //                   ElevatedButton(
// //                     onPressed: () {},
// //                     child: Text('+'),
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.grey[300],
// //                       foregroundColor: Colors.black,
// //                       minimumSize: Size(40, 40),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               SizedBox(height: 16),
// //               Text(
// //                 'Reviews (374)',
// //                 style: TextStyle(
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               SizedBox(height: 16),
// //               Row(
// //                 children: [
// //                   Expanded(
// //                     child: ElevatedButton(
// //                       onPressed: () {},
// //                       child: Text(
// //                         'Add to Cart',
// //                         style: TextStyle(color: Colors.orange),
// //                       ),
// //                       style: ElevatedButton.styleFrom(
// //                         // backgroundColor: Colors.orange,
// //                         foregroundColor: Colors.white,
// //                       ),
// //                     ),
// //                   ),
// //                   SizedBox(width: 16),
// //                   Expanded(
// //                     child: ElevatedButton(
// //                       onPressed: () {},
// //                       child: Text('Buy Now'),
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: Colors.red,
// //                         foregroundColor: Colors.white,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //
// //         body: CategoriesScreen(),
// //       ),
// //     );
// //   }
// // }
//
// // class CategoriesScreen extends StatefulWidget {
// //   @override
// //   State<CategoriesScreen> createState() => _CategoriesScreenState();
// // }
// //
// // class _CategoriesScreenState extends State<CategoriesScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //
// //       bottomNavigationBar: BottomNavigationBar(
// //         selectedItemColor: Colors.orange,
// //
// //
// //         currentIndex: 0,
// //         items: const [
// //           BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,), label: 'Home',),
// //           BottomNavigationBarItem(icon: Icon(Icons.category,color: Colors.grey,), label: 'Categories'),
// //           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.grey,), label: 'Orders'),
// //           BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey,), label: 'Profile'),
// //         ],
// //       ),
// //       appBar: AppBar(
// //
// //         title: const Text('Categories',style: TextStyle(fontWeight: FontWeight.w600),),
// //         centerTitle: true,
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back),
// //           onPressed: () {
// //             // handle back button press
// //           },
// //
// //         ),
// //         // actions: [
// //         //   IconButton(
// //         //     icon: Icon(Icons.search),
// //         //     onPressed: () {
// //         //       // handle search button press
// //         //     },
// //         //   ),
// //         //   IconButton(
// //         //     icon: Icon(Icons.filter_list),
// //         //     onPressed: () {
// //         //       // handle filter button press
// //         //     },
// //         //   ),
// //         // ],
// //       ),
// //       body:
// //
// //
// //       Column(
// //         children: [
// //           SizedBox(height: 10),
// //           Container(
// //             height: 100,
// //             child: PageView(
// //               children: [
// //                 AdvertisementCard(),
// //                 // Add more AdvertisementCard() widgets if needed
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 10),
// //           TabBarSection(),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class AdvertisementCard extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: EdgeInsets.symmetric(horizontal: 18),
// //       padding: EdgeInsets.all(10),
// //       decoration: BoxDecoration(
// //         color: Colors.pinkAccent.shade100,
// //         borderRadius: BorderRadius.circular(8),
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         children: [
// //
// //           Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text('TMT Steel Bars', style: TextStyle(color: Colors.black, fontSize: 16)),
// //               Text('Fe 550 Grade', style: TextStyle(color: Colors.grey.shade700, fontSize: 12)),
// //               Text('Starting from', style: TextStyle(color: Colors.pinkAccent, fontSize: 12)),
// //               Text('\$6.70', style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w800)),
// //             ],
// //           ),
// //           SizedBox(width: 10),
// //           Image.asset(
// //             'images/steelbars.png',
// //             height: 60,
// //           ),
// //
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// // class TabBarSection extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 3,
// //       child: Expanded(
// //         child: Column(
// //           children: [
// //             TabBar(
// //               labelColor: Color(0xff03A3FC),
// //               unselectedLabelColor: Colors.grey,
// //               tabs: [
// //                 Tab(text: 'Masonry',),
// //                 Tab(text: 'Concrete Ready'),
// //                 Tab(text: 'Plaster & Mortar'),
// //               ],
// //             ),
// //             Expanded(
// //               child: TabBarView(
// //                 children: [
// //                   CategoryList(),
// //                   Container(), // Placeholder for Concrete Ready tab
// //                   Container(), // Placeholder for Plaster & Mortar tab
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// // class CategoryList extends StatelessWidget {
// //   final List<String> categories = [
// //     'Thermal Insulated Concrete Blocks',
// //     'Light Weight Blocks',
// //     'Solid Blocks Normal Weight',
// //     'Interlocks & Pavings',
// //     'Kerbstone & Heelkerb & Wheel Stoppers',
// //     'Red Clay Blocks',
// //     'Hollow Blocks',
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //       itemCount: categories.length,
// //       itemBuilder: (context, index) {
// //         return Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Container(
// //             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)),
// //             child: ListTile(
// //               title: Text(categories[index]),
// //               trailing: Icon(Icons.arrow_forward_ios),
// //               onTap: () {
// //                 // handle category tap
// //               },
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }
//
// // Editing should start from here antony
//
//
// // import 'package:flutter/material.dart';
//
//
// // class OrderDetailsScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back),
// //           onPressed: () {
// //             // Handle back button press
// //           },
// //         ),
// //         title: Text('Orders Details',style: TextStyle(fontWeight: FontWeight.w600),),
// //         centerTitle: true,
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               OrderStatus(),
// //               SizedBox(height: 16),
// //               OrderInfo(),
// //               // SizedBox(height: 16),
// //               // ContactButtons(),
// //               SizedBox(height: 16),
// //               PriceDetails(),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// // class OrderStatus extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //       children: [
// //         OrderStatusStep(title: 'Processing', isActive: true),
// //         Expanded(
// //           child: Container(
// //             height: 1,
// //             color: Colors.grey,
// //           ),
// //         ),
// //         OrderStatusStep(title: 'Picking', isActive: false),
// //         Expanded(
// //           child: Container(
// //             height: 1,
// //             color: Colors.grey,
// //           ),
// //         ),
// //         OrderStatusStep(title: 'Shipping', isActive: false),
// //         Expanded(
// //           child: Container(
// //             height: 1,
// //             color: Colors.grey,
// //           ),
// //         ),
// //         OrderStatusStep(title: 'Delivered', isActive: false),
// //       ],
// //     );
// //   }
// // }
//
// // class OrderStatusStep extends StatelessWidget {
// //   final String title;
// //   final bool isActive;
// //
// //   OrderStatusStep({required this.title, required this.isActive});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         CircleAvatar(
// //           radius: 15,
// //           backgroundColor: isActive ? Colors.blue : Colors.grey,
// //           child: isActive ? Icon(Icons.check, color: Colors.white) : null,
// //         ),
// //         SizedBox(height: 4),
// //         Text(title),
// //       ],
// //     );
// //   }
// // }
//
//
// // class OrderInfo extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 4,
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Text('Order Id: 12347576585AF'),
// //                 Text("sub Total:\$ 5.00",style: TextStyle(fontWeight: FontWeight.bold),),
// //               ],
// //             ),
// //             SizedBox(height: 8),
// //             Row(
// //               children: [
// //                 Image.asset(
// //                   'images/cement.png',
// //                   width: 60,
// //                   height: 60,
// //                 ),
// //                 SizedBox(width: 16),
// //                 Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       'Cement Bags',
// //                       style: TextStyle(fontWeight: FontWeight.bold),
// //                     ),
// //                     Text('25 KG'),
// //                     Text('Quantity - 2'),
// //                     Text(
// //                       '\$2.50',
// //                       style: TextStyle(
// //                           fontWeight: FontWeight.bold, fontSize: 16),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //             SizedBox(height: 16),
// //             Row(
// //               children: [
// //                 Text('Expected Delivery:',style: TextStyle(fontWeight: FontWeight.bold),),
// //                 SizedBox(width: 10,),
// //                 Text("14th April 2024")
// //               ],
// //             ),
// //             SizedBox(height: 8),
// //             Text(
// //               'Adam Johns\nHouse Name\nPlace, District, State\n682352\n9876543210',
// //               style: TextStyle(height: 1.5),
// //             ),
// //             Divider(),
// //             SizedBox(height: 8),
// //             Text('Mode of Payment: COD',style: TextStyle(fontWeight: FontWeight.bold),),
// //             Divider(),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 ElevatedButton.icon(
// //                   icon: Icon(Icons.contact_support,color: Colors.blue,),
// //                   label: Text('Contact Us',style:TextStyle(color: Colors.blue),),
// //                   onPressed: () {
// //                     // Handle contact us button press
// //                   },
// //                 ),
// //                 ElevatedButton(
// //                   style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
// //                   child: Text('Cancel',style: TextStyle(color: Colors.white),),
// //                   onPressed: () {
// //                     // Handle cancel button press
// //                   },
// //                 ),
// //               ],
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class ContactButtons extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       children: [
// //         Expanded(
// //           child: ElevatedButton.icon(
// //             icon: Icon(Icons.contact_support,color: Colors.blue,),
// //             label: Text('Contact Us',style:TextStyle(color: Colors.blue),),
// //             onPressed: () {
// //               // Handle contact us button press
// //             },
// //           ),
// //         ),
// //         SizedBox(width: 16),
// //         Expanded(
//
// //         ),
// //       ],
// //     );
// //   }
// // }
//
// // class PriceDetails extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 4,
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               'Price Details',
// //               style: TextStyle(fontWeight: FontWeight.bold),
// //             ),
// //             Divider(),
// //             PriceDetailItem(title: 'Original Price', value: '\$3.20'),
// //             PriceDetailItem(title: 'Offer Price', value: '\$2.50'),
// //             PriceDetailItem(title: 'Quantity', value: '2'),
// //             PriceDetailItem(title: 'Delivery Charge', value: 'Free'),
// //             Divider(),
// //             PriceDetailItem(title: 'SUB TOTAL', value: '\$5.00', isBold: true),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// // class PriceDetailItem extends StatelessWidget {
// //   final String title;
// //   final String value;
// //   final bool isBold;
// //
// //   PriceDetailItem({required this.title, required this.value, this.isBold = false});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 4.0),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Text(
// //             title,
// //             style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
// //           ),
// //           Text(
// //             value,
// //             style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // buildSection(
//                   //   'Find more customers.',
//                   //   'images/findcustomer.png', // replace with your actual image path
//                   // ),
//                   // buildSection(
//                   //   'Increase Sales.',
//                   //   'images/increase sales.png', // replace with your actual image path
//                   // ),
//                   Image.asset("images/findcustomer.png"),
//                   Container(
//                     height: 200,
//                     width: 150,
//                     decoration: BoxDecoration(
//                         color: Color(0xffFF6624),
//                         borderRadius: BorderRadiusDirectional.only(
//                             topStart: Radius.circular(100),
//                             bottomStart: Radius.circular(100))),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment:MainAxisAlignment.center,children: [
//                       Text(
//                         "Find\nMore\nCustomers",
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     height: 200,
//                     width: 150,
//                     decoration: BoxDecoration(
//                         color: Color(0xffFF6624),
//                         borderRadius: BorderRadiusDirectional.only(
//                             topEnd: Radius.circular(100),
//                             bottomEnd: Radius.circular(100))),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.center,children: [
//                       Text(
//                         "Increase\nSales",
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                     ),
//                   ),
//                   Image.asset("images/increase sales.png"),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xffFF6624), // Button color
//                     padding: EdgeInsets.symmetric(vertical: 20.0),
//                     textStyle: TextStyle(fontSize: 18),
//                   ),
//                   child: Text(
//                     'Get Started',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//   // Widget buildSection(String text, String imagePath) {
//   //   return Row(
//   //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //     children: [
//   //       Image.asset(imagePath),
//   //       Container(
//   //         height: 200,
//   //         width: 150,
//   //         decoration: BoxDecoration(
//   //             color: Colors.orange,
//   //             borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(100),bottomStart: Radius.circular(100))
//   //         ),
//   //
//   //       ),
//   //       // Padding(
//   //       //   padding: const EdgeInsets.only(top: 150,left: 130),
//   //       //   child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
//   //       // )
//   //
//   //       // Column(
//   //       //   children: [
//   //       //     Container(
//   //       //       height: 100,
//   //       //       width: 100,
//   //       //       child: Image.asset(imagePath), // Load image here
//   //       //     ),
//   //       //     SizedBox(height: 20),
//   //       //     Text(
//   //       //       text,
//   //       //       style: TextStyle(
//   //       //         fontSize: 24,
//   //       //         fontWeight: FontWeight.bold,
//   //       //         color: Colors.white,
//   //       //       ),
//   //       //       textAlign: TextAlign.center,
//   //       //     ),
//   //       //   ],
//   //       // ),
//   //     ],
//   //   );
//   // }
// } import 'package:flutter/material.dart';
// import 'package:translator/translator.dart';
//
//
// class TranslatorScreen extends StatefulWidget {
//   @override
//   _TranslatorScreenState createState() => _TranslatorScreenState();
// }
//
// class _TranslatorScreenState extends State<TranslatorScreen> {
//   final TranslatorService _translatorService = TranslatorService();
//   final TextEditingController _textController = TextEditingController();
//   String _translatedText = '';
//   String _selectedLanguage = 'ar'; // Default to Arabic
//
//   void _translateText() async {
//     String text = _textController.text;
//     print('Translating: $text to $_selectedLanguage');
//     String translatedText = await _translatorService.translateText(text, _selectedLanguage);
//     setState(() {
//       _translatedText = translatedText;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Language Translator'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               controller: _textController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Enter text',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             DropdownButton<String>(
//               value: _selectedLanguage,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   _selectedLanguage = newValue!;
//                 });
//               },
//               items: <String>['en', 'ar']
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value.toUpperCase()),
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _translateText,
//               child: Text('Translate'),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Translated Text:',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8.0),
//             Text(_translatedText),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class TranslatorService {
//   final translator = GoogleTranslator();
//
//   Future<String> translateText(String text, String toLanguage) async {
//     try {
//       var translation = await translator.translate(text, to: toLanguage);
//       print('Original: $text');
//       print('Translated: ${translation.text}');
//       return translation.text;
//     } catch (e) {
//       print('Translation error: $e');
//       return 'Translation failed';
//     }
//   }
// }
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class DashboardScreen extends StatefulWidget {
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _buildProfileSection(),
//                 Container(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     child: Text('Edit Profile'),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.grey[200],
//                       foregroundColor: Colors.black,
//                     ),
//                   ),
//                 ),
//
//                 const SizedBox(height: 20),
//                 _buildSalesChart(),
//                 const SizedBox(height: 20),
//                 _buildShortcuts(),
//                 const SizedBox(height: 20),
//                 _buildOrdersSection(),
//               ],
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//         backgroundColor: Colors.green,
//       ),
//     );
//   }
//
//   Widget _buildProfileSection() {
//     return const Row(
//
//
//       children: [
//         CircleAvatar(
//           radius: 30,
//           backgroundImage: AssetImage('images/profile.png'), // Add your profile image here
//         ),
//         SizedBox(width: 16),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Welcome!',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'Pioneer Constructions',
//               style: TextStyle(fontSize: 16, color: Colors.green),
//             ),
//             SizedBox(height: 8),
//
//           ],
//         ),
//         SizedBox(width: 90,),
//         Icon(Icons.headphones)
//       ],
//     );
//   }
//
//   Widget _buildSalesChart() {
//     return Column(
//       children: [
//         Align(
//             alignment: Alignment.centerLeft,
//             child: Text("Today Sales",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
//         SizedBox(height: 15,),
//         Container(
//           height: 200,
//           padding: const EdgeInsets.all(8.0),
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: LineChart(
//             LineChartData(
//               gridData: FlGridData(show: true),
//               titlesData: FlTitlesData(
//                 leftTitles: AxisTitles(
//                   sideTitles: SideTitles(
//                     showTitles: false,
//                   ),
//                 ),
//                 rightTitles: AxisTitles(
//                   sideTitles: SideTitles(
//                     showTitles: false,
//                   ),
//                 ),
//                 topTitles: AxisTitles(
//                   sideTitles: SideTitles(
//                     showTitles: false,
//                   ),
//                 ),
//                 bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//               ),
//               borderData: FlBorderData(show: false),
//               lineBarsData: [
//                 LineChartBarData(
//                   spots: [
//                     FlSpot(0, 3),
//                     FlSpot(1, 1),
//                     FlSpot(2, 4),
//                     FlSpot(3, 3),
//                     FlSpot(4, 2),
//                     FlSpot(5, 5),
//                     FlSpot(6, 4),
//                   ],
//                   isCurved: true,
//                   color: Colors.orange,
//                   barWidth: 4,
//                   belowBarData: BarAreaData(show: false),
//                   dotData: FlDotData(show: false),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildShortcuts() {
//     return Column(
//       children: [
//         Align(
//             alignment: Alignment.centerLeft,
//             child: Text("Shortcuts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
//         SizedBox(height: 15,),
//         GridView.count(
//           shrinkWrap: true,
//           crossAxisCount: 2,
//           crossAxisSpacing: 16,
//           mainAxisSpacing: 10,
//           children: [
//             _buildShortcutCard('Sales', Icons.bar_chart, Colors.lightBlue),
//             _buildShortcutCard('Products', Icons.shopping_bag, Colors.lightGreen),
//             _buildShortcutCard('Orders', Icons.shopping_cart, Colors.pinkAccent),
//             _buildShortcutCard('Stocks', Icons.inventory, Colors.yellowAccent),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildShortcutCard(String title, IconData icon, Color color) {
//     return Card(
//
//       color: color,
//       child: InkWell(
//         onTap: () {},
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(icon, size: 50, color: Colors.white),
//               const SizedBox(height: 10),
//               Text(
//                 title,
//                 style: const TextStyle(fontSize: 18, color: Colors.white),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildOrdersSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Today\'s Orders',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 8),
//         _buildOrderItem('Cement Bags (50 KG)', 5, 'Ernakulam'),
//         _buildOrderItem('Cement Bags (25 KG)', 2, 'Kottayam'),
//       ],
//     );
//   }
//
//   Widget _buildOrderItem(String productName, int quantity, String location) {
//     return Card(
//       child: ListTile(
//         leading: Image.asset('images/cement.png', width: 50, height: 50), // Add your product image here
//         title: Text(productName),
//         subtitle: Text('Quantity: $quantity\nOrder from: $location'),
//       ),
//     );
//   }
// }