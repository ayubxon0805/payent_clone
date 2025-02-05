import 'package:flutter/material.dart';
import 'package:paynet_clone/widgets/add_templates_widget.dart';

class TemplatesWidget extends StatefulWidget {
  const TemplatesWidget({super.key});

  @override
  State<TemplatesWidget> createState() => _TemplatesWidgetState();
}

class _TemplatesWidgetState extends State<TemplatesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Shablonlar',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddTemplatesWidget(),
                  ));
            },
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.white,
                  ),
                ),
                Text("Qo'shish")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
