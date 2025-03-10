import 'package:flutter/material.dart';
import 'package:paynet_clone/widgets/pincode_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4)).then(
      (value) => Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const PinCodeWidget();
        },
      )),
    );
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          fit: BoxFit.cover,
          'assets/images/splash_screen.png',
        ));
  }
}
