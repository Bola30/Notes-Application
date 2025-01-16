import 'package:flutter/material.dart';
import 'package:notes_application/views/widgets/Notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        shape: const CircleBorder(),
        onPressed: (){} , child: const Icon(Icons.add),),
      body: const Notesbody() ,
    );
  }
}

