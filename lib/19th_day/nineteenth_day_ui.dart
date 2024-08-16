import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class NineteenthDayUi extends StatelessWidget {
  const NineteenthDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return GestureDetector(
      onTap: () {
        AppConstants.hideKeyboard();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red[600],
          title: Text(
            'Ingoude Ramen',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          leading: const Icon(
            Icons.grid_view,
            color: Colors.white,
          ),
          actions: [
            const CircleAvatar(
              child: Icon(
                Icons.person,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            const Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            SizedBox(
              width: 10.w,
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 15.h,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        20.r,
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
                        Expanded(
                          child: TextField(
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10.h,
                                horizontal: 10.w,
                              ),
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'Search here',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 150.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.r,
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          Assets.images.ramenImage.path,
                        ),
                        fit: BoxFit.cover,
                        opacity: 0.6,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 16.w,
                          bottom: 16.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Free Delivery Order!',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      fontSize: 24.sp,
                                      color: isDarkMode
                                          ? AppColors.white
                                          : AppColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Available 1 December - 30 December 2023',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      fontSize: 12.sp,
                                      color: isDarkMode
                                          ? AppColors.white
                                          : AppColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Category Selector
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryButton(label: 'All', isSelected: true),
                      CategoryButton(label: 'Ramen', isSelected: false),
                      CategoryButton(label: 'Drink', isSelected: false),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Product Grid
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        imageUrl: Assets.images.ramenImage.path,
                        title: 'Ramen Name',
                        price: '\$20.95',
                        isFavorite: index % 2 == 0,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const CategoryButton({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colors.red[600] : Colors.white,
        borderRadius: BorderRadius.circular(
          20.r,
        ),
        border: Border.all(
          color: Colors.red[600]!,
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 16.sp,
              color: isSelected ? Colors.white : Colors.red[600],
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final bool isFavorite;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Container(
      decoration: BoxDecoration(
        color: isDarkMode ? AppColors.black.withOpacity(0.6) : AppColors.white,
        borderRadius: BorderRadius.circular(
          20.r,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    20.r,
                  ),
                  topRight: Radius.circular(
                    20.r,
                  ),
                ),
                child: Image.asset(
                  imageUrl,
                  height: 120.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  backgroundColor:
                      isDarkMode ? AppColors.black : AppColors.white,
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  price,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
