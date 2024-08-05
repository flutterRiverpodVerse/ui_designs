import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ui_designs/8th_day/models/cart_model.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';

import 'cart_page.dart';
import 'widgets/grocery_item_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
          ),
          child: Icon(
            Icons.location_on,
            color: Colors.grey[700],
          ),
        ),
        title: Text(
          'Sydney, Australia',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 18.sp,
              ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 24.w,
            ),
            child: Container(
              padding: EdgeInsets.all(
                16.spMax,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(
                  12.r,
                ),
              ),
              child: const Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: isDarkMode ? AppColors.white : AppColors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const CartPage();
            },
          ),
        ),
        child: Icon(
          Icons.shopping_bag,
          color: isDarkMode ? AppColors.black : AppColors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Good morning,',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 18.sp,
                      ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Let's order fresh items for you",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 15.sp,
                      ),
                ),
                Divider(
                  height: 40.h,
                ),
                Text(
                  "Fresh Items",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 20.sp,
                      ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Consumer<CartModel>(
                  builder: (context, value, child) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: value.shopItems.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.2,
                      ),
                      itemBuilder: (context, index) {
                        return GroceryItemTile(
                          itemName: value.shopItems[index][0],
                          itemPrice: value.shopItems[index][1],
                          imagePath: value.shopItems[index][2],
                          color: value.shopItems[index][3],
                          onPressed: () =>
                              Provider.of<CartModel>(context, listen: false)
                                  .addItemToCart(index),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
