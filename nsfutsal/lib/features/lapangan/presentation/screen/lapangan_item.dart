import 'package:auto_route/auto_route.dart';
import 'package:nsfutsal/features/lapangan/data/models/lapangan/lapangan_model.dart';
import 'package:flutter/material.dart';

import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import 'package:nsfutsal/shared/strings.dart';

class LapanganItem extends StatefulWidget {
  final LapanganList lapanganList;

  const LapanganItem({
    Key? key,
    required this.lapanganList,
  }) : super(key: key);

  @override
  State<LapanganItem> createState() => _LapanganItemState();
}

class _LapanganItemState extends State<LapanganItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
        itemCount: widget.lapanganList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              AutoRouter.of(context)
                  .push(LapanganDetailScreen(lapanganId: widget.lapanganList[index].id));
            },
            child: Container(
              // disable if lapangan is not available
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   // image
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                          widget.lapanganList[index].image.parseBaseUrlImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  const SizedBox(height: 10),
                  Text(
                    widget.lapanganList[index].name,
                    style: TextStyle(
                      color: dark,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
