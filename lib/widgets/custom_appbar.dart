import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('N O T E S',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Spacer(flex: 1,),
        CustomSearchIcon()
      ],
    );
  }
}


