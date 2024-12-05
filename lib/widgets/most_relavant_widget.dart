import 'package:flutter/material.dart';
import 'package:hotel_management_app/utility/app_const_data.dart';

import 'facility_widget.dart';

class MostRelaventWidget extends StatelessWidget {
  const MostRelaventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 350,
        height: AppConstData.mostRelavantCardHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConstData.radius),
            color: Colors.white),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppConstData.radius),
                  child: Image.asset("assets/hotel1.jpg"),
                ),
                Positioned(
                    right: 15,
                    top: 10,
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(99, 0, 0, 0),
                            borderRadius: BorderRadius.circular(40)),
                        child: const Center(
                            child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ))))
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tiny Hopme in RoeLingen"),
                      Row(
                        children: [Icon(Icons.star_rounded), Text("4.96(217)")],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      FacilityWidget(
                        facility: '4 guests',
                      ),
                      FacilityWidget(
                        facility: '2 bedroom',
                      ),
                      FacilityWidget(
                        facility: '1 bathroom',
                      ),
                    ],
                  ),
                  Row(
                    children: [],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
