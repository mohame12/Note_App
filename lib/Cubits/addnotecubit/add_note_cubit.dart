import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/consts/consts.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)
  async {
    emit(NoteLoadingState());
    try{
      var notebox=Hive.box<NoteModel>(KNotesBox);
      await notebox.add(note);
      emit(NoteSuccesState());
    }catch(e){
      emit(NoteFailurState(e.toString()));
    }

  }
}
