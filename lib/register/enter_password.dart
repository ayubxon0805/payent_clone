// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class EnterPassScreen extends StatefulWidget {
  const EnterPassScreen({super.key});

  @override
  State<EnterPassScreen> createState() => _EnterPassScreenState();
}

class _EnterPassScreenState extends State<EnterPassScreen> {
  var numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    0,
  ];
  var actives = [
    false,
    false,
    false,
    false,
    false,
  ];
  var clears = [
    false,
    false,
    false,
    false,
    false,
  ];
  var values = [1, 2, 3, 2, 1];
  var currentIndex = 0;
  var message = "";

  var inputText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Center(
            child:
                Image.asset(width: 75, height: 75, 'assets/images/block.png'),
          ),
          const SizedBox(height: 10),
          const Text(
            'Pin kodni kiriting',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            'Telefon raqamingiz',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          const Text(
            '+998 88 ... .. 22',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < actives.length; i++)
                      AniMatedBoxItem(
                        clear: clears[i],
                        active: actives[i],
                        value: values[i],
                      ),
                  ],
                ),
              ),
              Text(
                message,
                style: const TextStyle(color: Colors.black),
              )
            ],
          ),
          Expanded(
              child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemCount: 12,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.8 / 0.6,
            ),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 5,
                height: 5,
                child: index == 9
                    ? const SizedBox()
                    : Center(
                        child: MaterialButton(
                          minWidth: 50,
                          height: 55,
                          onPressed: () {
                            if (index == 11 && inputText.isNotEmpty) {
                              inputText =
                                  inputText.substring(0, inputText.length - 1);
                              clears = clears.map((e) => false).toList();
                              currentIndex--;

                              if (currentIndex >= 0) {
                                setState(() {
                                  clears[currentIndex] = true;
                                  actives[currentIndex] = false;
                                });
                              } else {
                                currentIndex = 0;
                              }

                              return;
                            } else {
                              inputText +=
                                  numbers[index == 10 ? index - 1 : index]
                                      .toString();
                            }
                            if (inputText.length == 5) {
                              setState(() {
                                clears = clears.map((e) => true).toList();
                                actives = actives.map((e) => false).toList();
                              });
                              if (inputText == '11082') {
                                setState(() {
                                  message = "Succes";
                                });
                                print('succes');
                                //next screen
                              } else {
                                setState(() {
                                  message = "Parol noto'g'ri";
                                });
                              }
                              inputText = "";
                              currentIndex = 0;
                              return;
                            }
                            message = "";
                            clears = clears.map((e) => false).toList();

                            setState(() {
                              actives[currentIndex] = true;
                              currentIndex++;
                            });
                          },
                          child: index == 11
                              ? const Icon(Icons.backspace)
                              : Text(
                                  '${numbers[index == 10 ? index - 1 : index]}'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
              );
            },
          )),
        ],
      ),
    );
  }
}

class AniMatedBoxItem extends StatefulWidget {
  final clear;
  final active;
  final value;

  const AniMatedBoxItem(
      {super.key, this.clear = false, this.active = false, this.value});

  @override
  State<AniMatedBoxItem> createState() => _AniMatedBoxItemState();
}

class _AniMatedBoxItemState extends State<AniMatedBoxItem>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.clear) {
      animationController.forward(from: 0);
    }
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Container(
          margin: const EdgeInsets.all(14),
          child: Stack(
            children: [
              Container(),
              AnimatedContainer(
                duration: const Duration(microseconds: 800),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.active
                        ? Colors.green
                        : const Color.fromARGB(255, 197, 194, 194)),
              ),
              Align(
                alignment:
                    Alignment(0, animationController.value / widget.value - 1),
                child: Opacity(
                  opacity: 1 - animationController.value,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.active
                            ? Colors.green
                            : const Color.fromARGB(255, 197, 194, 194)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
