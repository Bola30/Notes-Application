part of 'add_note_cubit.dart';

sealed class AddNoteState extends Equatable {
  const AddNoteState();

  @override
  List<Object> get props => [];
}

final class AddNoteInitial extends AddNoteState {}
final class AddNoteLoading extends AddNoteState {}
final class AddNoteSuccess extends AddNoteState {}
final class AddNoteFailure extends AddNoteState {
  final String errMessage;

  const AddNoteFailure(this.errMessage);
}




