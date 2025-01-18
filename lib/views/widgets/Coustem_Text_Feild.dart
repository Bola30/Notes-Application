import 'package:flutter/material.dart';

class CoustemTextFeild extends StatelessWidget {
  const CoustemTextFeild({super.key, required this.hint, this.maxlines = 1});

  final String hint;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.teal,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.teal),
        border: buildBorder(),
        enabledBorder:buildBorder(),     
        focusedBorder: buildBorder(Colors.teal)
         ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white)
      );
  }
}