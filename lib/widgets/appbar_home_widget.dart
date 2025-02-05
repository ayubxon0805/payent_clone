import 'package:flutter/material.dart';

class AppHomeWidget extends StatelessWidget {
  const AppHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          color: Colors.green,
          "assets/images/user.png",
          width: 40,
          height: 40,
        ),
        const SizedBox(width: 10),
        const Text(
          'Ayyubxon >',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
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
