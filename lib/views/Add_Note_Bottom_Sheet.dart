import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_application/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_application/views/widgets/Add_Note_Form.dart';
import 'package:notes_application/views/widgets/Coustem_Button.dart';
import 'package:notes_application/views/widgets/Coustem_Text_Feild.dart';

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.warning,
                animType: AnimType.rightSlide,
                title: 'Failed',
                desc: 'Please Try Again',
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}


