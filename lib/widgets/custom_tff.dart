import 'package:flutter/material.dart';

class TextFF extends StatelessWidget {
  const TextFF({
    super.key, required this.hint, required this.maxLines,
  });

  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: Color(0xff53EBD6),
      decoration: InputDecoration(
        hintText: hint,
        prefix: Icon(Icons.title,color: Color(0xff53EBD6),),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorderfoucsed(),
      ),

    );
  }

  OutlineInputBorder buildOutlineInputBorderfoucsed() {
    return OutlineInputBorder(
        borderRadius:BorderRadius.circular(12),borderSide: const BorderSide(color:Color(0xff53EBD6)  ),
      );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
          borderRadius:BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.white) );
  }
}