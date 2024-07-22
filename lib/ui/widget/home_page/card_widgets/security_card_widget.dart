import 'package:flutter/material.dart';

class SecurityCard extends StatefulWidget {
  const SecurityCard({super.key});

  @override
  State<SecurityCard> createState() => _SecurityCardState();
}

class _SecurityCardState extends State<SecurityCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Color.fromARGB(255, 37, 148, 102),
                  Color.fromARGB(255, 48, 184, 64),
                  Color.fromARGB(255, 73, 200, 61),
                ]),
            borderRadius: BorderRadius.circular(17),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 231, 229, 229),
                  blurRadius: 9,
                  spreadRadius: 6)
            ],
            border: Border.all(color: Colors.white54)),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  'Paynet Xavfsizlik',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                ),
                const Text(
                  'Xavfsizlikni oshirishni \nxohlaysizmi?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(color: Colors.black)),
                      minimumSize: const Size(90, 40),
                    ),
                    child: const Text(
                      'Shaxsingizni tasdiqlang',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    ))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
