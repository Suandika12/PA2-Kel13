import 'dart:core';
import 'package:nsfutsal/features/guest/navigation/presentation/screens/bottom_navigation_bar_screen.dart';

import 'product_guest_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nsfutsal/features/guest/home_guest/presentation/bloc/home_guest_bloc.dart';
import 'package:nsfutsal/features/guest/home_guest/presentation/bloc/home_guest_event.dart';
import 'package:nsfutsal/features/guest/home_guest/presentation/bloc/home_guest_state.dart';
import 'package:flutter/material.dart';
import '../../../../../shared/theme.dart';

class HomeGuestScreen extends StatefulWidget {
  const HomeGuestScreen({super.key});
  static const String routeName = '/home_guest';
  @override
  State<HomeGuestScreen> createState() => _HomeGuestScreenState();
}

// this is the home Screen
class _HomeGuestScreenState extends State<HomeGuestScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeGuestBloc>().add(
          const GetDataEvent(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<HomeGuestBloc, HomeGuestState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is HomeErrorState) {
            return Scaffold(
              body: Center(
                child: Text(
                  "There was an error loading the data",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
              ),
            );
          } else if (state is HomeLoadedState) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),

                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          'Dish List',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // listview item
                      state.productGuestList.isNotEmpty
                          ? ProductGuestItem(
                              productGuestList: state.productGuestList,
                            )
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.shopping_cart,
                                    size: 100,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'No Product Available',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: dark,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: const NavigationBarScreen(),
            );
          } else {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Loading...",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: dark,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
