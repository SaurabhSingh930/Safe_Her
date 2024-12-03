import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safe_her/screens/home/bottom_navigation/analytics_screen.dart';

import '../../utils/status_bar/status_bar_management.dart';
import 'bottom_navigation/dashboard_screen.dart';
import 'bottom_navigation/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _bottomNavOptions = <Widget>[
    AnalyticsScreen(),
    DashboardScreen(),
    SettingScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    showStatusBar();
    makeStatusBarTransparent();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/safe_her_hr_logo_rmbg.png",
            scale: 5,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 35,
                ))
          ],
        ),
        body: Center(
          child: _bottomNavOptions.elementAtOrNull(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.mapLocationDot,
                size: 28,
              ),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.chartLine,
                size: 28,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.gear,
                size: 28,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
