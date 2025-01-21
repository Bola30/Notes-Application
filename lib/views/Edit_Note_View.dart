import 'package:flutter/material.dart';
import 'package:notes_application/views/Coustem_Appbar.dart';
import 'package:notes_application/views/widgets/Coustem_Text_Feild.dart';

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
      SizedBox(
              height: 50,
            ),
            CoustemTextFeild(hint: "Titel",),
              SizedBox(
              height: 16,
            ),
            CoustemTextFeild(hint: "Content", maxlines: 5,)
          ],),
      ),
    );
  }
}