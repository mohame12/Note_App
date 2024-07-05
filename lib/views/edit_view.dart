import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import '../widgets/edit_view_ui.dart';


class EditView extends StatelessWidget {
  const EditView({super.key, required this.note});
static const String id='Editview';
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: EditViewUI(note: note,),
      ),
    );
  }
}


