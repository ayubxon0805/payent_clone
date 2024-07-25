import 'package:flutter/material.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  final names = [
    'Samandar Eshmamat...',
    'Ermatov Baxromjon',
    'Xolikulov Fozil',
    'Sagdullayev Sardor',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "O'tkazmalar",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Karta yoki telefon',
                filled: true,
                fillColor: const Color.fromARGB(255, 224, 221, 221),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.person),
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                    ),
                    IconButton(
                      icon:
                          const ImageIcon(AssetImage("assets/icons/scan.png")),
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/security_card.png',
                    ), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'O\'zimning\nkartamga',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                            FontWeight.w700, // Adjust text color as needed
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/gilam.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paynet-\nkartamga',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,

                        fontWeight: FontWeight.w700,
                        // Adjust text color as needed
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Shablonlar',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
          const CircleAvatar(
            radius: 35,
            child: const Icon(
              Icons.add_circle_outline_outlined,
              color: Colors.white,
            ),
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
