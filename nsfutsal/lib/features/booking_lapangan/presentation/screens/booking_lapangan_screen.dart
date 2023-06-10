import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../shared/theme.dart';
import '../bloc/booking_lapangan_bloc.dart';
import '../bloc/booking_lapangan_event.dart';
import '../bloc/booking_lapangan_state.dart';
import 'booking_item.dart';

const List<String> status = [
  'All Bookings',
  'Pending',
  'Denied',
  'Approved',
  'Completed',
  'Cancelled',
];

class BookingLapanganScreen extends StatefulWidget {
  static const String routeName = '/Booking-lapangan';
  const BookingLapanganScreen({super.key});

  @override
  State<BookingLapanganScreen> createState() => _BookingLapanganScreenState();
}

class _BookingLapanganScreenState extends State<BookingLapanganScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BookingLapanganBloc>().add(
          const GetBookingLapangansEvent(''),
        );
  }

  @override
  Widget build(BuildContext context) {
    String statusValue = status.first;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FB),
        appBar: AppBar(
          backgroundColor: chocolate2,
          elevation: 0,
          title: Text(
            'History Bookings',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<BookingLapanganBloc>().add(
                    const GetBookingLapangansEvent(''),
                  );
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      children: [
                        // filter
                        // dropdown status
                        Container(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: statusValue,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: dark,
                              ),
                              iconSize: 24,
                              elevation: 16,
                              onChanged: (String? newValue) {
                                setState(() {
                                  statusValue = newValue!;
                                  context.read<BookingLapanganBloc>().add(
                                        GetBookingLapangansEvent(statusValue),
                                      );
                                });
                              },
                              items: status.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 200,
                    child: BlocConsumer<BookingLapanganBloc, BookingLapanganState>(
                        listener: (context, state) {
                      if (state is BookingLapanganErrorState) {
                        EasyLoading.showError(state.message);
                      } else if (state is BookingLapanganCancelledState) {
                        EasyLoading.showSuccess(state.message);
                      }
                    }, builder: (context, state) {
                      if (state is BookingLapanganErrorState) {
                        return Center(
                          child: Text(
                            "There was an error loading the data",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: dark,
                            ),
                          ),
                        );
                      } else if (state is BookingLapanganLoadedState) {
                        return state.bookingLapanganList.isEmpty
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.bookmark_border,
                                      size: 100,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'No Bookings Found',
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
                            : ListView.builder(
                                shrinkWrap: true,
                                physics: const AlwaysScrollableScrollPhysics(),
                                itemCount: state.bookingLapanganList.length,
                                itemBuilder: (context, index) {
                                  return BookingItem(
                                    status: statusValue,
                                    bookingLapangan: state.bookingLapanganList[index],
                                  );
                                },
                              );
                      } else {
                        // show easy loading
                        return FutureBuilder(
                          future: Future.delayed(const Duration(seconds: 2)),
                          builder: (context, snapshot) {
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
                          },
                        );
                      }
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
