import 'package:flutter/material.dart';

import '../Widgets/product_card.dart';
import '../domain/Product.dart';

class ShoppingPage extends StatefulWidget {
  ShoppingPage();

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  List<Product> products = [
    Product(
      name: 'Cement Bags',
      price: 2.50,
      image: 'assets/homecategory/cementbag.png',
      rating: 4.5,
      reviews: 120,
      isWishlisted: false,
    ),
    Product(
      name: 'Cement Bags',
      price: 2.50,
      image: 'assets/homecategory/cementbag.png',
      rating: 4.5,
      reviews: 120,
      isWishlisted: false,
    ),
    Product(
      name: 'Cement Bags',
      price: 2.80,
      image: 'assets/homecategory/cementbag.png',
      rating: 4.0,
      reviews: 100,
      isWishlisted: false,
    ),
  ];

  void toggleWishlist(int index) {
    setState(() {
      products[index].isWishlisted = !products[index].isWishlisted;
    });
  }

  int _selectedIndex = 0;
  int _selectedFilterIndex = -1;

  void _onBottomNavigationItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onFilterButtonTapped(int index) {
    setState(() {
      _selectedFilterIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.cyan,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildFilterButton(0, 'Top Rated'),
                  _buildFilterButton(1, 'Offers'),
                  _buildFilterButton(2, 'Price: Low'),
                  _buildFilterButton(3, 'Price: High'),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                  toggleWishlist: () => toggleWishlist(index),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.sort),
            label: 'Sort By',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_list),
            label: 'Filter',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onBottomNavigationItemTapped,
      ),
    );
  }

  Widget _buildFilterButton(int index, String text) {
    return ElevatedButton(
      onPressed: () => _onFilterButtonTapped(index),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        side: BorderSide(
          color: _selectedFilterIndex == index
              ? Colors.orange
              : Colors.transparent,
          width: 2,
        ), // Text color
      ),
      child: Text(text),
    );
  }
}
