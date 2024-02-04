import 'package:bsync_app1/misc/colors_texts.dart';
// ignore: unused_import
import 'package:bsync_app1/pages/home_page.dart';
import 'package:bsync_app1/pages/home_page1.dart';
import 'package:bsync_app1/pages/project_page.dart';
import 'package:bsync_app1/pages/settings_page.dart';
import 'package:bsync_app1/pages/timeline_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List pages = [
    const HomePage1(),
    const ProjectPage(),
    const TimelinePage(),
    const SettingsPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      backgroundColor: AppColors.otherBg,
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.transparent,
        onTap: onTap,
        height: 55,
        animationCurve: Curves.easeInExpo,
        animationDuration: const Duration(milliseconds: 200),
        buttonBackgroundColor: AppColors.textColor,
        color: AppColors.textColor,
        items: [
          Icon(
            FluentSystemIcons.ic_fluent_home_regular,
            color: AppColors.otherBg,
          ),
          Icon(FluentSystemIcons.ic_fluent_apps_list_regular,
              color: AppColors.otherBg),
          Icon(FluentSystemIcons.ic_fluent_timeline_regular,
              color: AppColors.otherBg),
          Icon(FluentSystemIcons.ic_fluent_settings_regular,
              color: AppColors.otherBg),
        ],
      ),
    );
  }
}


// BottomNavigationBar(
//         elevation: 10,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         selectedItemColor: Colors.blueGrey,
//         unselectedItemColor: const Color(0xFF526480),
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
//               activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
//               label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(FluentSystemIcons.ic_fluent_apps_list_regular),
//               activeIcon: Icon(FluentSystemIcons.ic_fluent_apps_list_filled),
//               label: 'sjh'),
//           BottomNavigationBarItem(
//               icon: Icon(FluentSystemIcons.ic_fluent_timeline_regular),
//               activeIcon: Icon(FluentSystemIcons.ic_fluent_timeline_filled),
//               label: 'Timeline'),
//           BottomNavigationBarItem(
//               icon: Icon(FluentSystemIcons.ic_fluent_settings_regular),
//               activeIcon: Icon(FluentSystemIcons.ic_fluent_settings_filled),
//               label: 'Timeline'),
//         ],
//       ),