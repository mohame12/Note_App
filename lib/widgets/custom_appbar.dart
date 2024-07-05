import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon, required this.ontap});
  final String title;
  final IconData icon;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        const Spacer(flex: 1,),
        CustomSearchIcon(icon:icon, ontap:ontap  ,)
      ],
    );
  }
}


