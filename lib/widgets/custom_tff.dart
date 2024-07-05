import 'package:flutter/material.dart';

class TextFF extends StatelessWidget {
   const TextFF({
    super.key, required this.hint, required this.maxLines, this.validation, this.onSaved, this.prefix, this.onChanged
  });

  final String hint;
  final int maxLines;
  final String? Function(String?)? validation ;
  final void Function(String?)? onSaved;
  final Widget? prefix;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved ,
      onChanged:onChanged ,
      validator: (value) {
        if(value?.isEmpty ?? true)
          {
            return 'required Field...';
          }
        else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: const Color(0xff53EBD6),
      decoration: InputDecoration(
        hintText: hint,
        prefix: prefix,
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