import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Coustem_Icon.dart';

class CoustemAppBar extends StatelessWidget {
  const CoustemAppBar({super.key, required this.titel, required this.icon});

 final String titel;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          titel,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}

