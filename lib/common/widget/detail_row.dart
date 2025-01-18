import 'package:flutter/material.dart';

class DetailRow extends StatelessWidget {
  const DetailRow({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
