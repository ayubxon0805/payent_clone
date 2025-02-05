import 'package:flutter/material.dart';

class PaymentCards extends StatelessWidget {
  const PaymentCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'O\'zimning\nkartamga',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Paynet-\nkartamga',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,

                    fontWeight: FontWeight.w600,
                    // Adjust text color as needed
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
