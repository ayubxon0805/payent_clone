import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          buildServiceCategory(context, "Paynet Temir yo'l", "Paynet Avia",
              Icons.train_outlined, maxWidth, maxHeight),
          buildServiceCategory(
              context,
              "Paynet Avia",
              "Chiptalarni oson sotib oling",
              Icons.airplanemode_active_outlined,
              maxWidth,
              maxHeight),
          buildServiceCategory(
              context,
              "Qarzlaringizni biling",
              "Soliqlar va MIB bo'yicha",
              Icons.security_sharp,
              maxWidth,
              maxHeight),
          buildServiceCategory(context, "eSIM", "Tezkor faollashtirish",
              Icons.sim_card_outlined, maxWidth, maxHeight),
          buildServiceCategory(
              context,
              "Paynet Avto",
              "Avtomabil xizmatlari uchun qulay to'lov ",
              Icons.emoji_transportation,
              maxWidth,
              maxHeight),
        ],
      ),
    );
  }

  Widget buildServiceCategory(BuildContext context, String title,
      String subtitle, IconData icon, double maxWidth, double maxHeight) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: maxWidth * 0.04, vertical: maxHeight * 0.006),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.all(16.0),
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Xizmat ishlab chiqish jarayonida",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Center(
                      child: const Text(
                          "Eng yaxshi takliflarni qo'ldan boy bermaslik uchun yangilanishlarni kuzatib borish uchun obuna bo'ling"),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: Size(double.infinity, maxHeight * 0.05)),
                      onPressed: () {
                        launchUrl(Uri.parse('https://t.me/ayubxondevapps'));
                      },
                      child: const Text(
                        "Yaxshi",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
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
