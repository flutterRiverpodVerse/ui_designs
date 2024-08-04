import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';

class ChartHomePage extends StatefulWidget {
  const ChartHomePage({super.key});

  @override
  State<ChartHomePage> createState() => _ChartHomePageState();
}

class _ChartHomePageState extends State<ChartHomePage> {
  final List<Transaction> transactions = [
    Transaction(
        'Groceries',
        50.25,
        DateTime.now().subtract(const Duration(days: 1)),
        'Bought groceries from the supermarket'),
    Transaction(
        'Electricity Bill',
        75.30,
        DateTime.now().subtract(const Duration(days: 2)),
        'Monthly electricity bill'),
    Transaction('Water Bill', 20.15,
        DateTime.now().subtract(const Duration(days: 3)), 'Monthly water bill'),
    Transaction(
        'Internet Bill',
        45.00,
        DateTime.now().subtract(const Duration(days: 4)),
        'Monthly internet bill'),
    Transaction(
        'Movie Tickets',
        30.00,
        DateTime.now().subtract(const Duration(days: 5)),
        'Watched a movie at the cinema'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Home',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Container(
                          padding: EdgeInsets.all(
                            10.spMax,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.notifications_none,
                            size: 20.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    buildTotalBalance(
                      context: context,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    buildActionButtons(
                      context: context,
                    ),
                  ],
                ),
              ),
              Divider(
                height: 30.h,
                thickness: 5.w,
                color: AppColors.grey.withOpacity(0.5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildChart(
                    context: context,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Center(
                    child: Text(
                      'Transactions',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      return TransactionCard(
                        transaction: transactions[index],
                      );
                    },
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: buildBottomNavigation(
          context: context,
        ),
      ),
    );
  }

  Widget buildTotalBalance({
    required BuildContext context,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total balance',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          '\$1,400,512.31',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  Widget buildActionButtons({
    required BuildContext context,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildActionButton(
          context: context,
          icon: Icons.swap_horiz,
          label: 'Transfer',
        ),
        buildActionButton(
          context: context,
          icon: Icons.add,
          label: 'Top up',
        ),
        buildActionButton(
          context: context,
          icon: Icons.arrow_downward,
          label: 'Withdraw',
        ),
      ],
    );
  }

  Widget buildActionButton({
    required IconData icon,
    required String label,
    required BuildContext context,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(
            10.spMax,
          ),
          decoration: BoxDecoration(
            color: AppColors.grey.withOpacity(0.35),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }

  Widget buildChart({
    required BuildContext context,
  }) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total spending',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    '\$1,400,512.31',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 5.h,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                    15.r,
                  ),
                ),
                child: Text(
                  'This week',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: 1.sw - 25.w,
          height: 200.h,
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: LineChart(
            LineChartData(
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                horizontalInterval: 1,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: AppColors.grey.withOpacity(0.4),
                    strokeWidth: 1.w,
                  );
                },
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 22.sp,
                    getTitlesWidget: (value, meta) {
                      switch (value.toInt()) {
                        case 1:
                          return Container(
                            margin: EdgeInsets.only(
                              left: 15.w,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              'Mon',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontSize: 13.sp,
                                  ),
                            ),
                          );

                        case 2:
                          return Container(
                            margin: EdgeInsets.only(
                              left: 10.w,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              'Tue',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontSize: 13.sp,
                                  ),
                            ),
                          );
                        case 3:
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              'Wed',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontSize: 13.sp,
                                  ),
                            ),
                          );
                        case 4:
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              'Thu',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontSize: 13.sp,
                                  ),
                            ),
                          );
                        case 5:
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              'Fri',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontSize: 13.sp,
                                  ),
                            ),
                          );
                        case 6:
                          return Container(
                            margin: EdgeInsets.only(
                              right: 10.w,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              'Sat',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontSize: 13.sp,
                                  ),
                            ),
                          );
                        case 7:
                          return Container(
                            margin: EdgeInsets.only(
                              right: 15.w,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(
                              'Sun',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontSize: 13.sp,
                                  ),
                            ),
                          );
                        default:
                          return const SizedBox.shrink();
                      }
                    },
                    interval: 1,
                  ),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              minX: 1,
              maxX: 7,
              minY: 0,
              maxY: 5.2,
              lineTouchData: const LineTouchData(
                enabled: false,
              ),
              clipData: const FlClipData.horizontal(),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 0),
                    const FlSpot(0, 3),
                    const FlSpot(2.5, 2),
                    const FlSpot(4.9, 5),
                    const FlSpot(6.8, 3.1),
                    const FlSpot(8, 4),
                    const FlSpot(9.5, 3),
                    const FlSpot(12, 4.5),
                  ],
                  isCurved: true,
                  barWidth: 5.w,
                  isStrokeCapRound: true,
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    color: isDarkMode
                        ? AppColors.white.withOpacity(0.2)
                        : AppColors.black.withOpacity(0.1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildBottomNavigation({
    required BuildContext context,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildBottomNavItem(
          Icons.credit_card,
          'Cards',
          isSelected: true,
          context: context,
        ),
        buildBottomNavItem(
          Icons.account_balance,
          'Accounts',
          context: context,
        ),
        buildBottomNavItem(
          Icons.show_chart,
          'Stocks',
          context: context,
        ),
        buildBottomNavItem(
          Icons.person_outline,
          'Profile',
          context: context,
        ),
      ],
    );
  }

  Widget buildBottomNavItem(
    IconData icon,
    String label, {
    bool isSelected = false,
    required BuildContext context,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.blue : Colors.grey,
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: 12.sp,
                color: isSelected ? Colors.blue : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
        ),
      ],
    );
  }
}

class Transaction {
  final String title;
  final double amount;
  final DateTime date;
  final String description;

  Transaction(
    this.title,
    this.amount,
    this.date,
    this.description,
  );
}

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Card(
      color: isDarkMode
          ? AppColors.black.withOpacity(0.0001)
          : AppColors.white.withOpacity(0.9),
      margin: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 15.w,
      ),
      child: Padding(
        padding: EdgeInsets.all(
          16.spMax,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  transaction.title,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  '\$${transaction.amount.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              '${transaction.date.day}/${transaction.date.month}/${transaction.date.year}',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 12.sp,
                  ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              transaction.description,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 14.sp,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
