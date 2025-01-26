part of 'add_note_cubit.dart';

sealed class AddNoteState extends Equatable {
  const AddNoteState();

  @override
  List<Object> get props => [];
}

final class AddNoteInitial extends AddNoteState {}
<<<<<<< HEAD
final class AddNoteLoading extends AddNoteState {}
final class AddNoteSuccess extends AddNoteState {}
final class AddNoteFailure extends AddNoteState {
  final String errMessage;

  const AddNoteFailure(this.errMessage);
}





=======
>>>>>>> f6d4d198a22bf56de2f01bb32a947486bbf1a6af
