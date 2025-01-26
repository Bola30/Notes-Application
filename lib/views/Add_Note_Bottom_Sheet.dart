import
 'package:flutter/material.dart';
import 'package:notes_application/views/widgets/Coustem_Button.dart';
import 'package:notes_application/views/widgets/Coustem_Text_Feild.dart';

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitel;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CoustemTextFeild(
            onSaved: (value) {
              title = value;
            },
            hint: 'Titel',
          ),
          const SizedBox(
            height: 16,
          ),
           CoustemTextFeild(
            onSaved: (value) {
              subtitel = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(height: 32),
           CoustemButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
