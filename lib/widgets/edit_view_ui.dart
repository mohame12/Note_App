import 'package:flutter/material.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'custom_appbar.dart';
import 'custom_tff.dart';

class EditViewUI extends StatefulWidget {
  const EditViewUI({
    super.key, required this.note,
  });
  final NoteModel note;

  @override
  State<EditViewUI> createState() => _EditViewUIState();
}

class _EditViewUIState extends State<EditViewUI> {
   String ? title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsDirectional.only(top:16 ,start:16 ,end:16 ),
      child: Column(
        children: [

          CustomAppbar(title: 'Edite Note ', icon: Icons.done, ontap: () {
            // widget.note.title=title??widget.note.title;
            // widget.note.subtitle=content??widget.note.subtitle;
            AddNoteCubit.get(context).updateNote(widget.note, title, content);
            Navigator.pop(context);

          },),

          SizedBox(height: 30,),

          TextFF(hint: 'Title', maxLines: 1,onChanged: (val){
            title=val;
          },),

          SizedBox(height: 20,),

          TextFF(hint: 'Content', maxLines: 5,onChanged: (val){
            content=val;
          },)
        ],
      ),
    );
  }
}