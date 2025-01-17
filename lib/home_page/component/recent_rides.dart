import 'package:flutter/material.dart';
import 'package:test_gabriel/common/enum/order_status.dart';

class RecentRides extends StatelessWidget {
  const RecentRides({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.location_on_rounded,
                color: Color(0xFF3D638B),
              ),
              title: Text(
                "Pizzaman Ghana",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                spacing: 8,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Color(0xFF53866B),
                      ),
                      color: Color(OrderStatus.delivered.backgroundColor),
                    ),
                    child: Text(
                      OrderStatus.delivered.text,
                      style: TextStyle(color: Color(0xFF53866B)),
                    ),
                  ),
                  Flexible(
                      child: Text(
                    "May 17th, 2023",
                    overflow: TextOverflow.ellipsis,
                  )),
                ],
              ),
              trailing: Text(
                "GHC 30",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }),
    );
  }
}
