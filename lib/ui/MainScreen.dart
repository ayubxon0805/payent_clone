import 'package:flutter/material.dart';
import 'package:paynet_clone/ui/screens/Search_payment_screen.dart';
import 'package:paynet_clone/ui/screens/history_screen.dart';
import 'package:paynet_clone/ui/screens/home_scree.dart';
import 'package:paynet_clone/ui/screens/payment_widget.dart';
import 'package:paynet_clone/ui/screens/services_scren.dart';
import 'package:paynet_clone/widgets/custom_navigationbar.dart';

class ControlAllScreen extends StatefulWidget {
  const ControlAllScreen({super.key});

  @override
  State<ControlAllScreen> createState() => _ControlAllScreenState();
}

class _ControlAllScreenState extends State<ControlAllScreen> {
  @override
  // ignore: override_on_non_overriding_member
  int _currentIndex = 0;
  final List<Widget> bodyList = [
    const HomeScreen(),
    const PayPage(),
    const SearcPaymentPage(),
    const HistoryPage(),
    const ServicesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bodyList[_currentIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
