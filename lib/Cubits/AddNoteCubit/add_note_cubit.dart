import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:note_app/consts.dart';
import 'package:note_app/models/note_model.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>
{
  AddNoteCubit():super(AddNoteInitialState());
  static AddNoteCubit get(context)=>BlocProvider.of(context);


  List<NoteModel>? noteList;
  GlobalKey<ScaffoldState> scaffoldkey=GlobalKey();
  GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ? title,subtitle;
  IconData icon=Icons.add;
  bool isShown=false;

  closeFABMunel()
  {
    isShown = false;
    icon = Icons.add;
    emit(ChangeFAbState());
  }

  closeFAB1state()
  {
    isShown = true;
    icon = FontAwesomeIcons.minus;
    emit(ChangeFAbState());
  }

  openFAB0state()
  {

      isShown=false;
      icon=Icons.add;
      emit(ChangeFAbState());

  }




  addNote(NoteModel note)
  {
    emit(AddNoteLoadDataState());

      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notesBox.add(note);

      emit(AddNoteSuccesDataState());


  }


  fetchAllNoteList(NoteModel note)
  {
    emit(FitchListLoadDataState());
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      noteList=notesBox.values.toList();
      emit(FitchListSuccesDataState());


  }

  deleteNote(NoteModel note)
  {
    note.delete();
    emit(DeleteNoteitemState());
  }


  updateNote(NoteModel note,String? title,String ?content)
  {
    note.title=title ??note.title;
    note.subtitle=content ??note.subtitle;
    note.save();
    emit(DeleteNoteitemState());
  }

}
