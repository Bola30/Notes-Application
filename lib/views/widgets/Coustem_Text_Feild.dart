import 'package:flutter/material.dart';

class CoustemTextFeild extends StatelessWidget {
  const CoustemTextFeild(
      {super.key, required this.hint, this.maxlines = 1, this.onSaved});

  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      cursorColor: Colors.teal,
      maxLines: maxlines,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.teal),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(Colors.teal)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
