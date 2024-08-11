import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_constants.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class FourteenthDayUi extends StatelessWidget {
  const FourteenthDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppConstants.hideKeyboard();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Larana, Inc.',
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                const SearchBar(),
                SizedBox(
                  height: 20.h,
                ),
                const SpecialOfferCard(),
                SizedBox(
                  height: 20.h,
                ),
                SpecialMenu(),
                SizedBox(
                  height: 20.h,
                ),
                const WeeklyHighlight(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          5.r,
        ),
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Search Here',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          const Icon(
            Icons.search,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 5.h,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 4,
            child: Text(
              "TODAY'S SPECIAL OFFER",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          const Expanded(
            flex: 6,
            child: Text(
              'Get 20% off on our delectable family-sized\nbuckets of crispy fried chicken.',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class SpecialMenu extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      'image': Assets.images.recipeImage.path,
      'name': 'Menu 01',
      'price': '\$20'
    },
    {
      'image': Assets.images.recipeImage.path,
      'name': 'Menu 02',
      'price': '\$17'
    },
    {
      'image': Assets.images.recipeImage.path,
      'name': 'Menu 03',
      'price': '\$18'
    },
  ];

  SpecialMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return MenuCard(
            image: menuItems[index]['image'],
            name: menuItems[index]['name'],
            price: menuItems[index]['price'],
          );
        },
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const MenuCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Image.asset(image, fit: BoxFit.cover),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(price, style: const TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}

class WeeklyHighlight extends StatelessWidget {
  const WeeklyHighlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(
              16.spMax,
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(
                5.r,
              ),
            ),
            child: const Text(
              "This Week's Highlight",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            Assets.images.recipeHighlight.path,
            height: 140.h,
            width: 1.sw,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_basket,
          ),
          label: 'Cart',
        ),
      ],
      selectedItemColor: Colors.green,
    );
  }
}
