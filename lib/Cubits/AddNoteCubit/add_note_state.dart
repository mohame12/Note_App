

abstract class AddNoteState {}

//في حالة اضافة نوت ل Hive
final class AddNoteInitialState extends AddNoteState {}
final class AddNoteLoadDataState extends AddNoteState {}
final class AddNoteSuccesDataState extends AddNoteState {}



//ي حالة تغيير FAB
final class ChangeFAbState extends AddNoteState {}

//في حالة اضافة NOTE TO LIST VIEWS

final class FitchListLoadDataState extends AddNoteState {}
final class FitchListSuccesDataState extends AddNoteState {}


final class DeleteNoteitemState extends AddNoteState {}
final class UpdteNoteitemState extends AddNoteState{}





