import 'package:flutter/material.dart';
import 'package:paynet_clone/widgets/searchbar_widget.dart';

class AddTemplatesWidget extends StatelessWidget {
  const AddTemplatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Shablon qo\'shish'),
      ),
      body: SearchBarWidget(
        title: "Karta yoki telefon",
      ),
    );
  }
}
