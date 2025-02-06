import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      currentIndex: currentIndex,
      onTap: onTap,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      unselectedLabelStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 10,
      ),
      elevation: 15,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: currentIndex == 0 ? Colors.green : Colors.grey,
          ),
          label: 'Asosiy',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.currency_exchange,
            color: currentIndex == 1 ? Colors.green : Colors.grey,
          ),
          label: "O'tkazmalar",
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_balance_wallet_outlined,
            color: currentIndex == 2 ? Colors.green : Colors.grey,
          ),
          label: "To'lov",
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.access_time,
            color: currentIndex == 3 ? Colors.green : Colors.grey,
          ),
          label: "Tarix",
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.app_registration_outlined,
            color: currentIndex == 4 ? Colors.green : Colors.grey,
          ),
          label: "Xizmatlar",
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}
