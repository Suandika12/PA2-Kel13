import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 2;

  @override
  void initState() {
    super.initState();
    // check route name and set index
    if (AutoRouter.of(context).current.name == 'HomeScreen') {
      _selectedIndex = 0;
    } else if (AutoRouter.of(context).current.name == 'EventScreen') {
      _selectedIndex = 1;
    } else if (AutoRouter.of(context).current.name == 'LapanganScreen') {
      _selectedIndex = 2;
    } else if (AutoRouter.of(context).current.name == 'CartScreen') {
      _selectedIndex = 3;
    } else if (AutoRouter.of(context).current.name == 'ProfileScreen') {
      _selectedIndex = 4;
    }
  }

  void _onItemTapped(int index) {
    // check if index is same with current index
    if (_selectedIndex == index) {
      return;
    } else {
      setState(() {
        if (index == 0) {
          AutoRouter.of(context).push(
            const HomeScreen(),
          );
        } else if (index == 1) {
          AutoRouter.of(context).push(
            const EventScreen(),
          );
        } else if (index == 2) {
          AutoRouter.of(context).push(
            const LapanganScreen(),
          );
        } else if (index == 3) {
          AutoRouter.of(context).push(
            const CartScreen(),
          );
        } else if (index == 4) {
          AutoRouter.of(context).push(
            const ProfileScreen(),
          );
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
        Icon(Icons.calendar_month, color: Colors.white),
        Icon(Icons.home, color: Colors.white),
        Icon(Icons.shopping_cart, color: Colors.white),
        Icon(Icons.person, color: Colors.white),
      ],
      onTap: (index) {
        _onItemTapped(index);
      },
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
