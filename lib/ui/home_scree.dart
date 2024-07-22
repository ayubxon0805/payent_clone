import 'package:flutter/material.dart';
import 'package:paynet_clone/ui/widget/add_card_widget/add_card.dart';
import 'package:paynet_clone/ui/widget/appbar_home_widget.dart';
import 'package:paynet_clone/ui/widget/home_page/card_widgets/basic_widget.dart';
import 'package:paynet_clone/ui/widget/home_page/card_widgets/security_card_widget.dart';
import 'package:paynet_clone/ui/widget/home_page/reverse_card_widget.dart/reverse_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  const Text(
                    "2 911 263 so'm",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: IconButton(
                        onPressed: () {},
                        iconSize: 35,
                        color: Colors.grey.shade700,
                        icon: const Icon(Icons.visibility_rounded)),
                  )
                ],
              ),
            ),
            const PayCardWidget(),
            const ReverseRoutePage(),
            const SecurityCard(),
            CardWidget(),
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
