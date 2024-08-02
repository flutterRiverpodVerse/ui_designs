import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ui_designs/core/constants/app_colors.dart';

class BottomNavigation extends HookConsumerWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedIndex = useState<int>(0);
    
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: AppColors.primaryColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconBottomBar(
                text: "Home",
                icon: Icons.home,
                selected: selectedIndex.value == 0,
                onPressed: () => selectedIndex.value = 0,
              ),
              IconBottomBar(
                text: "Search",
                icon: Icons.search_outlined,
                selected: selectedIndex.value == 1,
                onPressed: () => selectedIndex.value = 1,
              ),
              IconBottomBar(
                text: "Add",
                icon: Icons.add_to_photos_outlined,
                selected: selectedIndex.value == 2,
                onPressed: () => selectedIndex.value = 2,
              ),
              IconBottomBar(
                text: "Cart",
                icon: Icons.local_grocery_store_outlined,
                selected: selectedIndex.value == 3,
                onPressed: () => selectedIndex.value = 3,
              ),
              IconBottomBar(
                text: "Calendar",
                icon: Icons.date_range_outlined,
                selected: selectedIndex.value == 4,
                onPressed: () => selectedIndex.value = 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {super.key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed});
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25.sp,
            color: selected ? AppColors.white : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12.sp,
            height: 0.1.h,
            color: selected ? AppColors.white : Colors.grey,
          ),
        )
      ],
    );
  }
}
