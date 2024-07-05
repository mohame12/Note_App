import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
   ColorWidget({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive ?
    CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 36,
        backgroundColor: color,
      ),
    )
        : CircleAvatar(
      radius: 36,
      backgroundColor: color,
    );

  }
}
