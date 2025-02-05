import 'package:flutter/material.dart';
import 'package:paynet_clone/widgets/add_card_widget/add_card.dart';
import 'package:paynet_clone/widgets/appbar_home_widget.dart';
import 'package:paynet_clone/widgets/home_page/card_widgets/basic_widget.dart';
import 'package:paynet_clone/widgets/home_page/card_widgets/security_card_widget.dart';
import 'package:paynet_clone/widgets/home_page/reverse_card_widget.dart/reverse_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isMoneyVisible = true;

  void _toggleMoneyVisibility() {
    setState(() {
      _isMoneyVisible = !_isMoneyVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppHomeWidget(),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Mening pulim',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 142, 135, 135)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _isMoneyVisible ? "2 911 263 so'm" : "*  * * * so'm",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: IconButton(
                        onPressed: _toggleMoneyVisibility,
                        iconSize: 35,
                        color: Colors.grey.shade700,
                        icon: Icon(_isMoneyVisible
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded)),
                  )
                ],
              ),
            ),
            const PayCardWidget(),
            const ReverseRoutePage(),
            const SecurityCard(),
            const CardWidget(),
          ],
        )),
      ),
    );
  }
}
