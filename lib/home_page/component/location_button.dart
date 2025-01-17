import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          Color(0xFFF4F4F4),
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.all(8.0),
        ),
        side: WidgetStateProperty.all<BorderSide>(
          BorderSide(color: Colors.grey),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8.0,
        children: [
          Icon(Icons.add_location_outlined, color: Colors.black),
          Text(
            "Oyarifa, Accra",
            style: TextStyle(color: Colors.black),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
