import 'package:flutter/material.dart';

class AniMatedBoxItem extends StatefulWidget {
  final clear;
  final active;

  const AniMatedBoxItem({super.key, this.clear = false, this.active = false});

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
                alignment: Alignment(0, animationController.value - 1),
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
