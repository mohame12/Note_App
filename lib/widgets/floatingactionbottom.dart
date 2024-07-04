import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts.dart';
import 'bottom_sheet_fab.dart';

class FloatingActionBootomFAB extends StatefulWidget {
  const FloatingActionBootomFAB({super.key});

  @override
  State<FloatingActionBootomFAB> createState() => _FloatingActionBootomFABState();
}

class _FloatingActionBootomFABState extends State<FloatingActionBootomFAB> {
  IconData icon=Icons.add;
  bool isShown=false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      if(isShown==false) {
        scaffoldkey.currentState?.showBottomSheet(
              (context) =>
              BottomShetFAB(),).closed.then((e){
          isShown=false;
          setState(() {icon=Icons.add;});
        });
        isShown=true;
        setState(() {
          icon=FontAwesomeIcons.minus;
        });
      }else
      {
        Navigator.pop(context);
        isShown=false;
        setState(() {
          icon=Icons.add;
        });
      }
    },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28)
      ),
      backgroundColor: Colors.blue.withOpacity(0.9),
      child: Icon(icon),);
  }
}
