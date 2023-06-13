import 'package:auto_route/auto_route.dart';
import 'package:nsfutsal/features/lapangan/presentation/bloc/lapangan_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import '../../../navigation/presentation/screens/bottom_navigation_bar_screen.dart';
import '../bloc/lapangan_bloc.dart';
import '../bloc/lapangan_event.dart';
import 'lapangan_item.dart';

class LapanganScreen extends StatefulWidget {
  static const routeName = '/lapangan';
  const LapanganScreen({super.key});

  @override
  State<LapanganScreen> createState() => _LapanganScreenState();
}

class _LapanganScreenState extends State<LapanganScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LapanganBloc>().add(
          const GetDataEvent(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LapanganBloc, LapanganState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LapanganErrorState) {
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
          } else if (state is LapanganLoadedState) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: chocolate2,
                elevation: 0,
                title: Text(
                  'Pinjam Ruangan',
                  style: TextStyle(
                    color: white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: white,
                    size: 30,
                  ),
                  onPressed: () {
                    AutoRouter.of(context).pushAndPopUntil(
                      const HomeScreen(),
                      predicate: (_) => false,
                    );
                  },
                ),
              ),
              body: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          'All Rooms',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // gridview item
                      state.lapanganList.isNotEmpty
                          ? LapanganItem(
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
                                    'No Room Available',
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
              ),
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
