
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/consts.dart';
import 'package:note_app/models/note_model.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>
{
  AddNoteCubit():super(AddNoteInitialState());
  AddNoteCubit get(context)=>BlocProvider.of(context);


  addNote(NoteModel note)
  {
    try{
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteLoadDataState());
      notesBox.add(note);

    }catch(e){
      AddNoteFailerState(err: e.toString());
    }
  }

}
