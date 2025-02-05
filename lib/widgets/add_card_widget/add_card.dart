import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 238, 236, 236),
                    blurRadius: 4,
                    spreadRadius: 5)
              ],
              border:
                  Border.all(color: const Color.fromARGB(255, 239, 236, 236)),
              borderRadius: BorderRadius.circular(17)),
          height: 260,
          width: 180,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Kartalarim',
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      color: Colors.green,
                      iconSize: 25,
                      icon: const Icon(Icons.add_circle_outline_outlined))
                ],
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 42, 168, 63),
                      borderRadius: BorderRadius.circular(10)),
                  width: 150,
                  height: 80,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            maxRadius: 15,
                            backgroundImage: NetworkImage(
                                "https://uba.uz/upload/iblock/73f/bankipakyuli.jpg"),
                          ),
                          Text(
                            'Humo  ',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        '   715 535 so\'m',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        const SizedBox(width: 25),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 238, 236, 236),
                    blurRadius: 4,
                    spreadRadius: 5)
              ],
              border:
                  Border.all(color: const Color.fromARGB(255, 239, 236, 236)),
              borderRadius: BorderRadius.circular(17)),
          height: 260,
          width: 180,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Keshbek-hisob",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                'Balans',
                style: TextStyle(color: Colors.grey),
              ),
              const Text(
                '15 460 so\'m',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Container(
                width: 300,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Color.fromARGB(255, 246, 244, 244))
                    ],
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 253, 253))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 5),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                          child: Text('Bugun'),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 7),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 108, 178, 74),
                                borderRadius: BorderRadius.circular(6)),
                            width: 60,
                            height: 20,
                            child: const Text(
                              " 0 so'm",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 168, 163, 163),
                              borderRadius: BorderRadius.circular(4)),
                          width: 10,
                          height: 20,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 168, 163, 163),
                              borderRadius: BorderRadius.circular(4)),
                          width: 10,
                          height: 30,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 168, 163, 163),
                              borderRadius: BorderRadius.circular(4)),
                          width: 10,
                          height: 40,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 168, 163, 163),
                              borderRadius: BorderRadius.circular(4)),
                          width: 10,
                          height: 60,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 168, 163, 163),
                              borderRadius: BorderRadius.circular(4)),
                          width: 10,
                          height: 10,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 168, 163, 163),
                              borderRadius: BorderRadius.circular(4)),
                          width: 10,
                          height: 30,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 168, 163, 163),
                              borderRadius: BorderRadius.circular(4)),
                          width: 10,
                          height: 45,
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
