import 'package:flutter/material.dart';
import 'package:paynet_clone/ui/screen/Search_payment_screen.dart';
import 'package:paynet_clone/ui/screen/history_screen.dart';
import 'package:paynet_clone/ui/screen/home_scree.dart';
import 'package:paynet_clone/ui/screen/payment_widget.dart';

class ControlAllScreen extends StatefulWidget {
  const ControlAllScreen({super.key});

  @override
  State<ControlAllScreen> createState() => _ControlAllScreenState();
}

class _ControlAllScreenState extends State<ControlAllScreen> {
  @override
  int _currentIndex = 0;
  final List<Widget> bodyList = [
    const HomeScreen(),
    const PayPage(),
    const SearcPaymentPage(),
    const HistoryPage(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          showUnselectedLabels: true,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(color: Colors.black),
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                label: 'Asosiy',
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "O'tkazmalar", icon: Icon(Icons.currency_exchange)),
            BottomNavigationBarItem(label: "To'lov", icon: Icon(Icons.payment)),
            BottomNavigationBarItem(label: "Tarix", icon: Icon(Icons.timer)),
          ]),
    );
  }
}
