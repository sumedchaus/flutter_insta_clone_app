import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/activity/activity_screen.dart';
import 'package:flutter_insta_clone_app/home_page.dart';
import 'package:flutter_insta_clone_app/profile/profile.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BotttomPersistentTabView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _screens(),
      items: _navBarsItems(),


    );
  }
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.square_grid_2x2),
      title: ("Dashboard"),
      activeColorPrimary: Colors.purple,
      inactiveColorPrimary: Colors.grey,
    ),

    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.ellipsis),
      title: ("More"),
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.person),
      title: ("Profile"),
      activeColorPrimary: Colors.red,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}
List<Widget> _screens() {
  return [HomePage(),ActivityScreen(), ProfileScreen()];
}
