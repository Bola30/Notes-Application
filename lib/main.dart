import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_application/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_application/models/note_model.dart';
import 'package:notes_application/simple_bloc_observer.dart';
import 'package:notes_application/views/constans.dart';
import 'package:notes_application/views/view_notes.dart';

void main() async{

    await Hive.initFlutter();

   Bloc.observer = SimpleBlocObserver();

    await Hive.openBox(kNotesBox);
    Hive.registerAdapter(NoteModelAdapter());
    
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'
        ),
        home: const NotesView(),
      ),
    );
  }
} 

