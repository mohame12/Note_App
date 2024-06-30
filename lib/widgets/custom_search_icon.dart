import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
            color: const Color(0xff3B3B3B),
            borderRadius: BorderRadius.circular(18)
        ),
        child: const Icon(Icons.search),
      ),
    );
  }
}