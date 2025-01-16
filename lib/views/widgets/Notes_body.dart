import 'package:flutter/material.dart';
import 'package:notes_application/views/Coustem_Appbar.dart';
import 'package:notes_application/views/widgets/Coustem_Note_Item.dart';

class Notesbody extends StatelessWidget {
  const Notesbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CoustemAppBar(),
          SizedBox(height: 25,),
          NoteItem(),
        ],
      ),
    );
  }
}

