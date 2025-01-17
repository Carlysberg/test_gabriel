import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_gabriel/common/constants.dart';
import 'package:test_gabriel/home_page/component/incoming_delivery_container.dart';
import 'package:test_gabriel/home_page/component/location_button.dart';
import 'package:test_gabriel/home_page/component/recent_rides.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile_picture.jpg"),
            ),
          ),
          title: LocationButton(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 30,
                color: Colors.black54,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16.0,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Incoming Delivery",
                  style: Constants.kLargeTitleTextStyle,
                ),
                IncomingDeliveryContainer(),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Recent Rides",
                          style: Constants.kMediumTitleTextStyle,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See More",
                          style: Constants.kSmallTitleTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                RecentRides(),
              ],
            ),
          ),
        ));
  }
}
