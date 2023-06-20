import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '/../../../routes/app_routers.gr.dart';
import '/../../../shared/theme.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    // check route name and set index
    final currentRouteName = AutoRouter.of(context).current.name;
    if (currentRouteName == 'HomeGuestScreen') {
      _selectedIndex = 0;
    } else if (currentRouteName == 'LapanganGuestScreen') {
      _selectedIndex = 1;
    } else if (currentRouteName == 'LoginScreen') {
      _selectedIndex = 2;
    }
  }

  void _onItemTapped(int index) {
    // check if index is same with current index
    if (_selectedIndex == index) {
      return;
    } else {
      setState(() {
        if (index == 0) {
          AutoRouter.of(context).push(const HomeGuestScreen());
        } else if (index == 1) {
          AutoRouter.of(context).push(const LapanganGuestScreen());
        } else if (index == 2) {
          AutoRouter.of(context).push(const LoginScreen());
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: _selectedIndex,
      items: const [
        Icon(Icons.fastfood,
            color: Colors.white), // Ubah warna ikon menjadi putih
        Icon(Icons.home, color: Colors.white),
        Icon(Icons.login, color: Colors.white),
      ],
      onTap: _onItemTapped,
      color: chocolate,
      buttonBackgroundColor: chocolate,
      backgroundColor: Colors.transparent,
      animationCurve:
          Curves.easeOutQuad, // Mengganti animasi ke Curves.easeOutQuad
      animationDuration: const Duration(
          milliseconds: 400), // Mengganti durasi animasi menjadi 400 milidetik
    );
  }
}
