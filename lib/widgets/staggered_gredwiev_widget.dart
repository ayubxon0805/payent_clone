import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGredWiev extends StatelessWidget {
  const StaggeredGredWiev({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: maxWidth * 0.04),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          buildPaymentCard(
              'Aloqa', Icons.phone, Colors.yellow, maxWidth, maxHeight * 0.18),
          buildPaymentCard(' Rekvizit\n bo‘yicha to‘lov', null, Colors.grey,
              maxWidth, maxHeight * 0.08),
          buildPaymentCard('Kommunal to‘lovlar', Icons.home, Colors.green,
              maxWidth, maxHeight * 0.18),
          buildPaymentCard('Internet va TV', Icons.wifi, Colors.blue, maxWidth,
              maxHeight * 0.13),
          buildPaymentCard('Davlat xizmatlari va shtraflar',
              Icons.account_balance, Colors.purple, maxWidth, maxHeight * 0.18),
          buildPaymentCard(
              'Ta’lim', Icons.school, Colors.pink, maxWidth, maxHeight * 0.13),
        ],
      ),
    );
  }

  Widget buildPaymentCard(String title, IconData? icon, Color color,
      double maxWidth, double maxHeight) {
    return InkWell(
      onTap: () {
        print('pressed');
      },
      child: Container(
        width: maxWidth * 0.44,
        height: maxHeight,
        decoration: BoxDecoration(
          color: color.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              if (icon !=
                  null) // Agar icon mavjud bo‘lsa, faqat shunda qo‘shiladi
                Icon(icon, size: 40, color: color),
            ],
          ),
        ),
      ),
    );
  }
}
