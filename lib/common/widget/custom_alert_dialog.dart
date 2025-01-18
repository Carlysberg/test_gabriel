import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_gabriel/common/constants.dart';
import 'package:test_gabriel/common/widget/detail_row.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bottomPadding = 32.0;
    return Column(
      children: [
        const Spacer(),
        AlertDialog(
          backgroundColor: Color(0xFFFAFAFA),
          insetPadding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          contentPadding: EdgeInsets.all(16),
          title: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
                backgroundColor: Color(0xFFFCF0F0),
                child: Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.black,
                  size: 30,
                )),
            title: Text(
              "Emergency Ride",
              style: Constants.kMediumTitleTextStyle,
            ),
            subtitle: Text("Disappears in 00:30"),
            trailing: Text(
              "GHC 30.00",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Column(
            spacing: 10.0,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pick Up Location",
                          style: Constants.kSmallTextStyle,
                        ),
                        Text(
                          "Osu",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/images/bus_with_dashes.png"),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Drop Off Location",
                          style: Constants.kSmallTextStyle,
                        ),
                        Text(
                          "Adabraka",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              DetailRow(title: "Rider Name", value: "Derrick Assan"),
              DetailRow(title: "Vehicle Type", value: "Motorbike - Yamaha FZ"),
              DetailRow(title: "Vehicle Number", value: "GT-2410-25"),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey),
                  color: Color(0xFFF4F4F4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vehicle Breakdown"),
                    Icon(Icons.check_circle),
                  ],
                ),
              )
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    context.maybePop();
                  },
                  child: Text(
                    "Decline",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.deepOrange,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.maybePop();
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.black),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                    padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 8,
                    )),
                  ),
                  child: Text("Accept"),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: bottomPadding),
      ],
    );
  }
}
