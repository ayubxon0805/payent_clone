import 'package:flutter/material.dart';

import 'package:paynet_clone/widgets/payment_categories-widget.dart';

import 'package:paynet_clone/widgets/searchbar_widget.dart';
import 'package:paynet_clone/widgets/staggered_gredwiev_widget.dart';
import 'package:paynet_clone/widgets/templates_widget.dart';

class SearcPaymentPage extends StatefulWidget {
  const SearcPaymentPage({super.key});

  @override
  State<SearcPaymentPage> createState() => _SearcPaymentPageState();
}

class _SearcPaymentPageState extends State<SearcPaymentPage> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text(
          "To'lov",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarWidget(title: "Izlash"),
            const TemplatesWidget(),
            const PaymentCategoriesWidget(
              title1: "Paynet \n QilvoR",
              title2: "Tezkor \n to'lovlar",
              icon1: null,
              icon2: null,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: maxWidth * 0.04, vertical: maxHeight * 0.01),
              child: const Text(
                "To'lov Turlari",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
            ),
            const StaggeredGredWiev(),
            const PaymentCategoriesWidget(
              title1: " Muddatli\n o'lovlar",
              title2: "Transport\n va to'taksi",
              icon1: Icons.percent,
              icon2: Icons.directions_bus,
            ),
            const PaymentCategoriesWidget(
              title1: " Kredit\n to'lovlar",
              title2: "Tibbiyot",
              icon1: Icons.credit_score_outlined,
              icon2: Icons.local_hospital,
            ),
            const PaymentCategoriesWidget(
              title1: " Mikrokredit,\n lombardlar",
              title2: "Boshqa \n to'lovlar",
              icon1: Icons.hourglass_empty_rounded,
              icon2: Icons.more_horiz,
            ),
          ],
        ),
      ),
    );
  }
}
