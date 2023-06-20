import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nsfutsal/features/guest/lapangan_guest/presentation/bloc/lapangan_guest_state.dart';
import '../../../../../shared/theme.dart';
import '../../../navigation/presentation/screens/bottom_navigation_bar_screen.dart';
import '../bloc/lapangan_guest__bloc.dart';
import '../bloc/lapangan_guest_event.dart';
import '../bloc/lapangan_guest_state.dart';
import 'lapangan_guest_item.dart';

class LapanganGuestScreen extends StatefulWidget {
  static const routeName = '/lapangan_guest';
  const LapanganGuestScreen({Key? key}) : super(key: key);

  @override
  State<LapanganGuestScreen> createState() => _LapanganGuestScreenState();
}

class _LapanganGuestScreenState extends State<LapanganGuestScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LapanganGuestBloc>().add(
          const GetDataEvent(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LapanganGuestBloc, LapanganGuestState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LapanganGuestErrorState) {
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
          } else if (state is LapanganGuestLoadedState) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome Numero Sada Futsal',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CarouselSlider(
                      items: [
                        Image.asset(
                            'assets/images/image1.jpg'), // Ganti dengan gambar pertama
                        Image.asset(
                            'assets/images/image2.jpg'), // Ganti dengan gambar kedua
                        Image.asset(
                            'assets/images/image3.jpg'), // Ganti dengan gambar ketiga
                      ],
                      options: CarouselOptions(
                        height: 200,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),

                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text(
                        'Numero Sada Futsal provides several courts that you can order. The field booking price is 100 thousand / hour. You can also pay a deposit of 50% of the booking price. This place provides a Foodpedia service that you can order in COD.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text(
                        'Location: Jln. TB Silalahi No. 1 Pagar Batu Balige Village',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 60),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                        'Field List',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // gridview item
                    state.lapanganList.isNotEmpty
                        ? LapanganGuestItem(
                            lapanganList: state.lapanganList,
                          )
                        : Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.no_meeting_room,
                                  size: 100,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'No Field Available',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: dark,
                                  ),
                                ),
                              ],
                            ),
                          )
                  ],
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
                      height: 10,
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
