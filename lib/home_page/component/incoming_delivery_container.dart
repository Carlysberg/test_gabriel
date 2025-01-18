import 'package:flutter/material.dart';
import 'package:test_gabriel/common/constants.dart';
import 'package:test_gabriel/common/enum/order_status.dart';

class IncomingDeliveryContainer extends StatelessWidget {
  const IncomingDeliveryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 16, top: 16, right: 16),
        decoration: BoxDecoration(
            color: Color(0xFFF4F4F4),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Disappears in ",
                          style:
                              Constants.kSmallTextStyle.copyWith(fontSize: 16)),
                      TextSpan(
                          text: "00.30",
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.grey),
                    color: Color(OrderStatus.incoming.backgroundColor),
                  ),
                  child: Text(OrderStatus.incoming.text,
                      style: Constants.kSmallTextStyle
                          .copyWith(color: Colors.black)),
                )
              ],
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/jollof_image.jpg"),
              ),
              title: Text(
                "Barque City",
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Osu",
                  style: Constants.kSmallTextStyle,
                ),
              ),
              trailing: Text(
                "GHC 30.00",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
              ),
              child: Text("Accept"),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Decline",
                style: TextStyle(color: Colors.deepOrange),
              ),
            ),
          ],
        ));
  }
}
