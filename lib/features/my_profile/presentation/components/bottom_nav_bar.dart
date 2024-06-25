import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  "https://cdn.icon-icons.com/icons2/3150/PNG/512/user_profile_female_icon_192701.png",
                ),
              ),
              label: AppString.profile),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.payment,
              ),
              label: AppString.payment),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined), label: AppString.exam),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: AppString.lectures),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: AppString.home),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.kBlue,
        onTap: onItemTapped,
        unselectedItemColor: AppColors.kBlack54);
  }
}
