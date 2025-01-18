import 'package:flutter/material.dart';
import 'package:notes_application/views/Add_Note_Bottom_Sheet.dart';
import 'package:notes_application/views/widgets/Notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        shape: const CircleBorder(),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) {
            return const AddNoteBottom();
          },);
        } , child: const Icon(Icons.add),),
      body: const Notesbody() ,
    );
  }
}

