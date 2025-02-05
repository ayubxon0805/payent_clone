import 'package:flutter/material.dart';

class ReverseRoutePage extends StatefulWidget {
  const ReverseRoutePage({super.key});

  @override
  State<ReverseRoutePage> createState() => _ReverseRoutePageState();
}

class _ReverseRoutePageState extends State<ReverseRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 231, 229, 229),
                  blurRadius: 9,
                  spreadRadius: 11)
            ],
            border: Border.all(color: Colors.white54)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/images/paynet_people.png',
                    height: 70,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10, right: 70),
                      child: Text(
                        'Sizning Darajangiz:Tajriblai',
                        style: TextStyle(
                            color: Color.fromARGB(255, 131, 128, 128)),
                      ),
                    ),
                    const Text(
                      '267 tanga',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Image.asset(
                      'assets/images/space.png',
                      width: 250,
                    ),
                  ],
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 50),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(27),
                    )),
                child: const Text(
                  'Ayirboshlash',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
