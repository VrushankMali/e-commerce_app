import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget
{
  void Function(int)? onTabChange;
  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: GNav(
        color: Colors.grey[600],
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.red.shade900),
        tabBackgroundColor: Colors.red.shade600,
        tabBorderRadius: 13.0,
        gap: 6.0,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        onTabChange: (value) => onTabChange!(value),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Monospace', // Font family for default text
        ),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}