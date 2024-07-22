import 'package:flutter/material.dart';

class AppHomeWidget extends StatelessWidget {
  const AppHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/paynet_circle.png",
          width: 55,
          height: 55,
        ),
        const Text(
          '+998 88 940 21 22 >',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 45),
        IconButton(
            onPressed: () {},
            iconSize: 30,
            icon: Icon(
              Icons.headphones,
              color: Colors.grey.shade600,
            )),
        IconButton(
            onPressed: () {},
            iconSize: 30,
            icon: Icon(
              Icons.notifications,
              color: Colors.grey.shade600,
            )),
      ],
    );
  }
}
