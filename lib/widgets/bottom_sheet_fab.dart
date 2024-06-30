import 'package:flutter/material.dart';
class BottomShetFAB extends StatelessWidget {
  const BottomShetFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          color: const Color(0xff303030),
          borderRadius: BorderRadius.circular(16)
      ),

    );
  }
}