import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_constants.dart';
import 'package:ui_designs/gen/assets.gen.dart';

import '../core/constants/app_colors.dart';

class SeventeenthDayUi extends StatelessWidget {
  const SeventeenthDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppConstants.hideKeyboard();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.location_on,
            color: AppColors.black,
          ),
          title: Text(
            'Lampung, Indonesia',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [
            const Icon(
              Icons.notifications,
              color: AppColors.black,
            ),
            SizedBox(
              width: 8.w,
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                  ),
                  child: Text(
                    'Where do you want to go?',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    16.spMax,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'Explore now',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 15.h,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryIcon(
                        icon: Icons.hotel,
                        label: 'Hotel',
                      ),
                      CategoryIcon(
                        icon: Icons.place,
                        label: 'Destination',
                      ),
                      CategoryIcon(
                        icon: Icons.restaurant,
                        label: 'Food',
                      ),
                      CategoryIcon(
                        icon: Icons.shopping_cart,
                        label: 'Shopping',
                      ),
                      CategoryIcon(
                        icon: Icons.directions_bike,
                        label: 'Rental',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    20.spMax,
                  ),
                  child: Text(
                    'Popular Destination',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                SizedBox(
                  height: 120.h,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    20.spMax,
                  ),
                  child: Text(
                    'Explore the world again',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                SizedBox(
                  height: 120.h,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                      DestinationCard(
                        image: Assets.images.scenery.path,
                        label: 'Paris',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryIcon({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String image;
  final String label;

  const DestinationCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 12.w,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              8.r,
            ),
            child: Image.asset(
              image,
              height: 90.h,
              width: 100.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            label,
          ),
        ],
      ),
    );
  }
}
