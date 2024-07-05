import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key, required this.icon, required this.ontap,
  });
  final IconData icon;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
            color: const Color(0xff3B3B3B),
            borderRadius: BorderRadius.circular(18)
        ),
        child:  Icon(icon),
      ),
    );
  }
}