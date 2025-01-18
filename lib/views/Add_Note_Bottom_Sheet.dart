import 'package:flutter/material.dart';
import 'package:notes_application/views/widgets/Coustem_Text_Feild.dart';

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
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
