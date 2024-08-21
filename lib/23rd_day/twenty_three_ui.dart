import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_constants.dart';

class TwentyThreeUi extends StatelessWidget {
  const TwentyThreeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppConstants.hideKeyboard();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Payment data',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  // Total Price
                  Text(
                    '\$2,280.00',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  // Payment Methods
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const PaymentMethodButton(
                        label: 'PayPal',
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const PaymentMethodButton(
                        label: 'Credit',
                        isSelected: true,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const PaymentMethodButton(
                        label: 'Wallet',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  // Card Number
                  const PaymentTextField(
                    hintText: 'Card number',
                    prefixIcon: Icon(
                      Icons.credit_card,
                      color: Colors.orange,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Valid Until and CVV
                  const Row(
                    children: [
                      Expanded(
                        child: PaymentTextField(
                          hintText: 'Month / Year',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: PaymentTextField(
                          hintText: 'CVV',
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Card Holder Name
                  const PaymentTextField(
                    hintText: 'Your name and surname',
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Save Card Checkbox
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {},
                      ),
                      Expanded(
                        child: Text(
                          'Save card data for future payments',
                          maxLines: null,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 15.sp,
                              ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  // Proceed to Confirm Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const PaymentConfirmationScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                      ),
                    ),
                    child: Text(
                      'Proceed to confirm',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                    ),
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

class PaymentConfirmationScreen extends StatelessWidget {
  const PaymentConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(
              20.spMax,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Payment',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                // Promo Banner
                Container(
                  padding: EdgeInsets.all(
                    20.spMax,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '\$50 off',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                      ),
                      Text(
                        'On your first order',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 16.sp,
                                  color: Colors.white70,
                                ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '* Promo code valid for orders over \$150.',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                // Payment Information
                Text(
                  'Payment information',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      size: 32.sp,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card holder',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 16.sp,
                                ),
                          ),
                          Text(
                            'Master Card ending **98',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 14.sp,
                                ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                // Promo Code Field
                const PaymentTextField(
                  hintText: 'PROMO20-08',
                ),
                SizedBox(
                  height: 30.h,
                ),
                // Pay Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).maybePop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                    ),
                  ),
                  child: Text(
                    'Pay',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentMethodButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const PaymentMethodButton({
    super.key,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(
          10.r,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class PaymentTextField extends StatelessWidget {
  final String hintText;
  final Icon? prefixIcon;
  final bool obscureText;

  const PaymentTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontSize: 15.sp,
          ),
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 15.sp,
            ),
        prefixIcon: prefixIcon,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
