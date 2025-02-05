import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Xizmatlar',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
      ),
      body: Column(
        children: [
          buildServiceCategory("Paynet Temir yo'l", "Paynet Avia",
              Icons.train_outlined, maxWidth, maxHeight),
          buildServiceCategory("Paynet Avia", "Chiptalarni oson sotib oling",
              Icons.airplanemode_active_outlined, maxWidth, maxHeight),
          buildServiceCategory(
              "Qarzlaringizni biling",
              "Soliqlar va MIB bo'yicha",
              Icons.security_sharp,
              maxWidth,
              maxHeight),
          buildServiceCategory("eSIM", "Tezkor faollashtirish",
              Icons.sim_card_outlined, maxWidth, maxHeight),
          buildServiceCategory(
              "Paynet Avto",
              "Avtomabil xizmatlari uchun qulay to'lov ",
              Icons.emoji_transportation,
              maxWidth,
              maxHeight),
        ],
      ),
    );
  }

  Widget buildServiceCategory(String title, String subtitle, IconData icon,
      double maxWidth, double maxHeight) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: maxWidth * 0.04, vertical: maxHeight * 0.006),
      child: InkWell(
        onTap: () {
          print('pressed');
        },
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 216, 221, 224),
              borderRadius: BorderRadius.circular(15)),
          width: maxWidth * 0.95,
          height: maxHeight * 0.08,
          child: ListTile(
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(subtitle),
            leading: Icon(icon),
            trailing: const Icon(
              Icons.navigate_next_outlined,
              color: Color.fromARGB(255, 130, 126, 126),
            ),
          ),
        ),
      ),
    );
  }
}
