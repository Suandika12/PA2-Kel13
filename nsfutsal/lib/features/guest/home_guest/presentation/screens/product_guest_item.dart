import 'package:nsfutsal/features/guest/home_guest/data/models/products/product_guest_model.dart';
import 'package:nsfutsal/routes/app_routers.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nsfutsal/shared/strings.dart';

class ProductGuestItem extends StatefulWidget {
  final ProductGuestList? productGuestList;

  const ProductGuestItem({Key? key, this.productGuestList}) : super(key: key);

  @override
  State<ProductGuestItem> createState() => _ProductGuestItemState();
}

class _ProductGuestItemState extends State<ProductGuestItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.productGuestList!.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            AutoRouter.of(context).push(
                  LoginScreen(),
                );
              },
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
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
                          widget.productGuestList![index].image.parseBaseUrlImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(
                  width: 10,
                ),
                // name, distributor, price, rating
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productGuestList![index].name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // category
                      Text(
                        widget.productGuestList![index].category,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Rp. ${widget.productGuestList![index].price}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
