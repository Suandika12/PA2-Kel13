import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:nsfutsal/features/guest/lapangan_guest/data/models/lapangan/lapangan_guest_model.dart';
import 'package:nsfutsal/shared/strings.dart';
import 'package:nsfutsal/shared/theme.dart';

import '../../../../../routes/app_routers.gr.dart';

class LapanganGuestItem extends StatefulWidget {
  final LapanganGuestList lapanganList;

  const LapanganGuestItem({
    Key? key,
    required this.lapanganList,
  }) : super(key: key);

  @override
  State<LapanganGuestItem> createState() => _LapanganGuestItemState();
}

class _LapanganGuestItemState extends State<LapanganGuestItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
          milliseconds: 600), // Ubah durasi animasi sesuai kebutuhan Anda
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(
          1, 0), // Mulai dari luar layar sejauh 1 kali lebar layar ke kanan
      end: Offset.zero, // Berakhir di posisi awal (tidak ada pergeseran)
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut, // Ubah kurva animasi sesuai keinginan Anda
    ));

    // Memulai animasi saat halaman selesai dibangun
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: Container(
        margin: const EdgeInsets.fromLTRB(40, 0, 40, 20),
        child: ListView.builder(
          itemCount: widget.lapanganList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                AutoRouter.of(context).push(
                  LoginScreen(),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          image: DecorationImage(
                            image: NetworkImage(
                              widget
                                  .lapanganList[index].image.parseBaseUrlImage,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.lapanganList[index].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            widget.lapanganList[index].description,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
