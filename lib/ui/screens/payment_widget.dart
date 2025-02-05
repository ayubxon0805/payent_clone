import 'package:flutter/material.dart';
import 'package:paynet_clone/widgets/all_transactions_widget.dart';
import 'package:paynet_clone/widgets/payment_cards.dart';
import 'package:paynet_clone/widgets/searchbar_widget.dart';
import 'package:paynet_clone/widgets/templates_widget.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "O'tkazmalar",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'So\'nggi o\'tkazmalar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          SearchBarWidget(
            title: "Karta yoki telefon",
          ),
          AllTransactionsWidget(),
          PaymentCards(),
          TemplatesWidget()
        ],
      ),
    );
  }
}
