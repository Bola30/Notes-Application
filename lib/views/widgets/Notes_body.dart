import 'package:flutter/material.dart';
import 'package:notes_application/views/Coustem_Appbar.dart';
import 'package:notes_application/views/widgets/Notes_ListView.dart';

class Notesbody extends StatelessWidget {
  const Notesbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CoustemAppBar(titel: 'Notes', icon: Icons.search,),
          SizedBox(height: 20),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}



