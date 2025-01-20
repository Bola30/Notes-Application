import 'package:flutter/material.dart';
import 'package:notes_application/views/Coustem_Appbar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:24),
        child: Column(children: [
            SizedBox(
              height: 50,
            ),
            CoustemAppBar(
              titel: 'Edit Note',
              icon: Icons.check,
            ),
          ],),
      ),
    );
  }
}