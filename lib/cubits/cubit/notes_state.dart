part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesInitial extends NotesCubitState {}

final class NotesLoding extends NotesCubitState {}

final class NotesSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});

}

final class NotesFailure extends NotesCubitState {
  final String errMessage;

  NotesFailure(this.errMessage);
}
