import 'package:flutter/material.dart';
import 'package:notes_application/views/Coustem_Appbar.dart';
import 'package:notes_application/views/widgets/Coustem_Text_Feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CoustemAppBar(
            titel: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 16,
          ),
          CoustemTextFeild(
            hint: 'Titel',
          ),
          SizedBox(
            height: 16,
          ),
          CoustemTextFeild(
            hint: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
