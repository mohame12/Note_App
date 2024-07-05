import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:note_app/Cubits/AddNoteCubit/add_note_state.dart';
import 'package:note_app/models/note_model.dart';
import 'note_Item_on_listview.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AddNoteCubit, AddNoteState>(
  builder: (context, state) {
    List<NoteModel>notes=AddNoteCubit.get(context).noteList ??[];
    return Expanded(child: Padding(
      padding:  const EdgeInsetsDirectional.symmetric(vertical: 10),
      child: ListView.builder(
        physics:  const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>   Padding(
          padding: const EdgeInsetsDirectional.only(top: 5),
          child: NoteItem(note: notes[index],),
        ),
        itemCount:notes.length
        ,
      ),
    ));
  },
);
  }
}
