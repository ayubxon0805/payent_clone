import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String title;
  const SearchBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 87, 84, 84)),
          filled: true,
          fillColor: const Color.fromARGB(255, 231, 228, 228),
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
                icon: const ImageIcon(AssetImage("assets/icons/scan.png")),
                onPressed: () {
                  // Add your onPressed code here!
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
