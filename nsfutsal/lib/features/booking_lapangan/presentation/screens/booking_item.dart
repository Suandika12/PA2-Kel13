import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/theme.dart';
import '../../data/models/booking_lapangan/bookinglapangan_model.dart';
import '../bloc/booking_lapangan_bloc.dart';
import '../bloc/booking_lapangan_event.dart';
import '../shared/custom_button.dart';

class BookingItem extends StatelessWidget {
  final String status;
  final BookingLapangan bookingLapangan;

  const BookingItem({
    Key? key,
    required this.status,
    required this.bookingLapangan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Booking ID: ${bookingLapangan.id}',
                style: TextStyle(
                  color: dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Status: ${bookingLapangan.status}',
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Lapangan: ${bookingLapangan.lapangan.name}',
            style: TextStyle(
              color: dark.withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Booking On : ${bookingLapangan.createdAt}',
            style: TextStyle(
              color: dark.withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Start Date: ${bookingLapangan.startDate}',
            style: TextStyle(
              color: dark.withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'End Date: ${bookingLapangan.endDate}',
            style: TextStyle(
              color: dark.withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          bookingLapangan.status == 'Pending'
              ? CustomButton(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Cancel Booking',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    //show dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Cancel Booking'),
                          content: const Text(
                              'Are you sure you want to cancel this Booking?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                AutoRouter.of(context).pop();
                              },
                              child: const Text('No'),
                            ),
                            TextButton(
                              onPressed: () {
                                if (status == 'All Bookings') {
                                  context.read<BookingLapanganBloc>().add(
                                      BookingLapanganEvent.cancelBooking(
                                          '', bookingLapangan));
                                } else {
                                  context.read<BookingLapanganBloc>().add(
                                      BookingLapanganEvent.cancelBooking(
                                          status, bookingLapangan));
                                }
                                AutoRouter.of(context).pop();
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
