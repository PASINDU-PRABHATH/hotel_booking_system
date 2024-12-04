import 'package:flutter/material.dart';
import 'package:hotel_management_app/main/booking_screen.dart';
import 'package:hotel_management_app/main/discover_screen.dart';
import 'package:hotel_management_app/main/favourite_screen.dart';
import 'package:hotel_management_app/main/message_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> screenList = const [
    DiscoverScreen(),
    FavouriteScreen(),
    BookingScreen(),
    MessageScreen(),
  ];

  int screenNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[screenNo],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 400,
          height: 70,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(219, 0, 0, 0)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bottomNavigationIcon(
                  icon: Icons.ac_unit_rounded,
                  navigationText: "Discover",
                  index: 0,
                ),
                bottomNavigationIcon(
                  icon: Icons.ac_unit_rounded,
                  navigationText: "Favorites",
                  index: 1,
                ),
                bottomNavigationIcon(
                  icon: Icons.ac_unit_rounded,
                  navigationText: "Bookings",
                  index: 2,
                ),
                bottomNavigationIcon(
                  icon: Icons.ac_unit_rounded,
                  navigationText: "Messages",
                  index: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomNavigationIcon(
      {required IconData icon,
      required String navigationText,
      required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          screenNo = index;
        });
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: index == screenNo ? Colors.white : Colors.grey,
            size: index == screenNo ? 20 : 19,
          ),
          Text(
            navigationText,
            style: TextStyle(
              color: index == screenNo ? Colors.white : Colors.grey,
              fontSize: index == screenNo ? 14 : 12,
            ),
          )
        ],
      ),
    );
  }
}
