import 'package:flutter/material.dart';

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
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        Icon(icon),
      ],
    );
  }
}

