import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram/app/modules/activity/views/activity_view.dart';
import 'package:instagram/app/modules/home/views/home_view.dart';
import 'package:instagram/app/modules/profile/views/profile_view.dart';
import 'package:instagram/app/modules/reels/views/reels_view.dart';
import 'package:instagram/app/modules/search/views/search_view.dart';

import '../controllers/nav_bar_controller.dart';
import 'dart:io' show Platform;

class NavBarView extends GetView<NavBarController> {
  const NavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const NavigationBar();
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  NavBarController navBarController = Get.put(NavBarController());

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SearchView(),
    ReelsView(),
    ActivityView(),
    ProfileView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? SafeArea(
            child: Scaffold(
                // appBar: AppBar(
                //   title: const Text('BottomNavigationBar Sample'),
                // ),
                body: _widgetOptions.elementAt(_selectedIndex),
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.black,
                  elevation: 8,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      label: '',
                      icon: Icon(Icons.home),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Icon(Icons.search),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Icon(Icons.video_collection_outlined),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Icon(Icons.favorite),
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Icon(Icons.person_rounded),
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.white,
                  onTap: _onItemTapped,
                )),
          )
        : SafeArea(
            bottom: false,
            child: CupertinoTabScaffold(
              tabBar: CupertinoTabBar(
                height: MediaQuery.of(context).size.height * 0.03,
                activeColor: Colors.white,
                items: const [
                  BottomNavigationBarItem(
                    
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    
                    icon: Icon(Icons.search),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.video_collection_outlined),
                    
                  ),
                  BottomNavigationBarItem(
                    
                    icon: Icon(Icons.favorite),
                  ),
                  BottomNavigationBarItem(
                    
                    icon: Icon(Icons.person_rounded),
                  ),
                ],
              ),
              tabBuilder: (context, index) {
                if (index == 0) {
                  return CupertinoTabView(
                    builder: (BuildContext context) => const HomeView(),
                  );
                } else if (index == 1) {
                  return CupertinoTabView(
                    builder: (BuildContext context) => const SearchView(),
                  );
                } else if (index == 2) {
                  return CupertinoTabView(
                    builder: (BuildContext context) => const ReelsView(),
                  );
                } else if (index == 3) {
                  return CupertinoTabView(
                    builder: (BuildContext context) => const ActivityView(),
                  );
                } else {
                  return CupertinoTabView(
                    builder: (BuildContext context) => const ProfileView(),
                  );
                }
              },
            ),
          );
  }
}
