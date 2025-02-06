import 'package:flutter/material.dart';
import 'package:paynet_clone/ui/screens/notifications.dart';
import 'package:paynet_clone/ui/screens/profile_screen.dart';
import 'package:paynet_clone/ui/screens/support_screen.dart';

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
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ProfilePage();
              },
            ));
          },
          child: const Text(
            'Ayyubxon >',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SupportPage();
              }));
            },
            iconSize: 30,
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.grey.shade600,
            )),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationsPage(),
                  ));
            },
            iconSize: 30,
            icon: Icon(
              Icons.notifications,
              color: Colors.grey.shade600,
            )),
      ],
    );
  }
}
