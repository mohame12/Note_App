part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

class NoteLoadingState extends AddNoteState{}
class NoteSuccesState extends AddNoteState{}
class NoteFailurState extends AddNoteState{
  final String error;

  NoteFailurState( this.error);
}

