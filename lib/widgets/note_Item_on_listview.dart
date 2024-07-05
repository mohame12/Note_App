import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note,

  });
  final NoteModel note;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacementNamed(context, EditView.id);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(note.color),
        ),
        child:  Padding(
          padding: const EdgeInsetsDirectional.only(top: 24,start: 10,bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(note.title,style: const TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',color: Colors.black,fontSize: 26),),
                subtitle:  Padding(
                  padding: const EdgeInsetsDirectional.only(top: 16),
                  child: Text(note.subtitle,style: TextStyle(fontFamily: 'Poppins',color: Colors.black.withOpacity(0.5),fontSize: 20),),
                ),
                trailing: IconButton(onPressed: (){
                  AddNoteCubit.get(context).deleteNote(note);
                  AddNoteCubit.get(context).fetchAllNoteList(note);
                }, icon:const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,)),
              ),
               Padding(
                padding: const EdgeInsetsDirectional.only(end: 22,top: 16,bottom: 10 ),
                child: Text(note.date,style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5)),),
              )
            ],
          ),
        ),
      ),
    );
  }
}