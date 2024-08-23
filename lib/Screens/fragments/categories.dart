import 'package:bricksnmix/Screens/shopping_page.dart';
import 'package:bricksnmix/designs/ResponsiveInfo.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.orange,
      //
      //
      //   currentIndex: 0,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,), label: 'Home',),
      //     BottomNavigationBarItem(icon: Icon(Icons.category,color: Colors.grey,), label: 'Categories'),
      //     BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.grey,), label: 'Orders'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey,), label: 'Profile'),
      //   ],
      // ),
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // handle back button press
          },
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {
        //       // handle search button press
        //     },
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.filter_list),
        //     onPressed: () {
        //       // handle filter button press
        //     },
        //   ),
        // ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: ResponsiveInfo.isMobile(context) ? 100 : 130,
            child: PageView(
              children: const [
                AdvertisementCard(),
                // Add more AdvertisementCard() widgets if needed
              ],
            ),
          ),
          SizedBox(height: ResponsiveInfo.isMobile(context) ? 10 : 15),
          const TabBarSection(),
        ],
      ),
    );
  }
}

class AdvertisementCard extends StatelessWidget {
  const AdvertisementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: ResponsiveInfo.isMobile(context) ? 18 : 20),
      padding: EdgeInsets.all(ResponsiveInfo.isMobile(context) ? 10 : 12),
      decoration: BoxDecoration(
        color: Colors.pinkAccent.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TMT Steel Bars',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: ResponsiveInfo.isMobile(context) ? 16 : 19),
              ),
              Text(
                'Fe 550 Grade',
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: ResponsiveInfo.isMobile(context) ? 12 : 14),
              ),
              Text(
                'Starting from',
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: ResponsiveInfo.isMobile(context) ? 12 : 13),
              ),
              Text(
                '\$6.70',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: ResponsiveInfo.isMobile(context) ? 16 : 19,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/homecategory/metalimage.png',
            height: ResponsiveInfo.isMobile(context) ? 60 : 80,
            width: ResponsiveInfo.isMobile(context) ? 100 : 130,
          ),
        ],
      ),
    );
  }
}

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Expanded(
        child: Column(
          children: [
            const TabBar(
              labelColor: Color(0xff03A3FC),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: 'Masonry',
                ),
                Tab(text: 'Concrete Ready'),
                Tab(text: 'Plaster & Mortar'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CategoryList(),
                  Container(), // Placeholder for Concrete Ready tab
                  Container(), // Placeholder for Plaster & Mortar tab
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  final List<String> categories = [
    'Thermal Insulated Concrete Blocks',
    'Light Weight Blocks',
    'Solid Blocks Normal Weight',
    'Interlocks & Pavings',
    'Kerbstone & Heelkerb & Wheel Stoppers',
    'Red Clay Blocks',
    'Hollow Blocks',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: ListTile(
              title: Text(categories[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // handle category tap

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingPage()),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
