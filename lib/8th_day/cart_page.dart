import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ui_designs/core/constants/app_colors.dart';

import 'models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      body: SafeArea(
        child: Consumer<CartModel>(
          builder: (context, value, child) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Cart",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 20.sp,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: value.cartItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            value.cartItems[index][2],
                            height: 36.h,
                          ),
                          title: Text(
                            value.cartItems[index][0],
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                          ),
                          subtitle: Text(
                            '\$ ${value.cartItems[index][1]}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () =>
                                Provider.of<CartModel>(context, listen: false)
                                    .removeItemFromCart(index),
                          ),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    ),
                    padding: EdgeInsets.all(
                      24.spMax,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Price',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontSize: 20.sp,
                                    color: AppColors.white,
                                  ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              '\$${value.calculateTotal()}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontSize: 18.sp,
                                    color: AppColors.white,
                                  ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green.shade200,
                            ),
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                          ),
                          padding: EdgeInsets.all(
                            12.spMax,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Pay Now',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      fontSize: 16.sp,
                                      color: AppColors.white,
                                    ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16.sp,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
