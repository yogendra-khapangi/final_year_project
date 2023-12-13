import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MybottomNavigationBar extends StatefulWidget {
  const MybottomNavigationBar({super.key});

  @override
  State<MybottomNavigationBar> createState() => _MybottomNavigationBarState();
}

class _MybottomNavigationBarState extends State<MybottomNavigationBar> {
  static const iconList = <IconData>[
    Icons.cake,
    Icons.add_location_sharp,
    Icons.zoom_in_outlined,
    Icons.auto_awesome_motion,
    // Icons.call_end_sharp,
    // Icons.equalizer_rounded,
    // Icons.wifi_lock,
    // Icons.mail,
  ];
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      activeColor: const Color.fromARGB(255, 143, 139, 139),
      inactiveColor: Colors.indigo,
      icons: iconList,
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      leftCornerRadius: 20,
      rightCornerRadius: 20,
      onTap: (index) => setState(() => _bottomNavIndex = index),
      //other params
    );
  }
}
