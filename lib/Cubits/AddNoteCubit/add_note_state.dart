


abstract class AddNoteState {}

final class AddNoteInitialState extends AddNoteState {}
final class AddNoteLoadDataState extends AddNoteState {}
final class AddNoteSuccesDataState extends AddNoteState {}
final class AddNoteFailerState extends AddNoteState {
  final String err;

  AddNoteFailerState({required this.err});
}
