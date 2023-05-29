import 'package:flutter/material.dart';


class Details extends StatelessWidget {
  final String text;
  final Widget icon;
  const Details({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}
