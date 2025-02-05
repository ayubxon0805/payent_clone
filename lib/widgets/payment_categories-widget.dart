import 'package:flutter/material.dart';

class PaymentCategoriesWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final IconData? icon1;
  final IconData? icon2;

  const PaymentCategoriesWidget(
      {super.key,
      required this.title1,
      required this.title2,
      required this.icon1,
      required this.icon2});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: maxWidth * 0.044, vertical: maxHeight * 0.006),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              print('pressed');
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 225, 222, 222),
                borderRadius: BorderRadius.circular(15),
              ),
              width: maxWidth * 0.44,
              height: maxHeight * 0.08,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title1,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    if (icon1 != null)
                      Icon(
                        icon1,
                        size: 30,
                        color: const Color.fromARGB(255, 110, 105, 105),
                      ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print('pressed');
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 225, 222, 222),
                borderRadius: BorderRadius.circular(15),
              ),
              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title2,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    if (icon2 != null)
                      Icon(
                        icon2,
                        size: 25,
                        color: const Color.fromARGB(255, 110, 105, 105),
                      ),
                  ],
                ),
              ),
              width: maxWidth * 0.44,
              height: maxHeight * 0.08,
            ),
          )
        ],
      ),
    );
  }
}
