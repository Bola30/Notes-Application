import 'package:flutter/material.dart';
import 'package:notes_application/views/Coustem_Appbar.dart';

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
          CoustemAppBar(titel: 'Edit Note', icon: Icons.check,),
        ],
      ),
    );
  }
}