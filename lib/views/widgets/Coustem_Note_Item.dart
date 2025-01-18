
import 'package:flutter/material.dart';
import 'package:notes_application/views/Edit_Note_View.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        },));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top: 24 , bottom: 24 , left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  "Flutter Tips",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 16 , bottom: 16) ,
                  child: Text("Build Your Career With Bola Nady",
                      style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  color: Colors.black,
                  iconSize: 30,
                ),
              ),            Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text("May 17,2024", style: TextStyle(color: Colors.black.withOpacity(0.4)  , fontSize: 16) ),
              )
            ],
          ),
        ),
      ),
    );
  }
}