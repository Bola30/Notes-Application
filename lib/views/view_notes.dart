import 'package:flutter/material.dart';
import 'package:notes_application/views/widgets/Notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Notesbody() ,
    );
  }
}

