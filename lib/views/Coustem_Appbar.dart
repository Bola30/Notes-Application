import 'package:flutter/material.dart';
import 'package:notes_application/views/widgets/Serche_Icon.dart';

class CoustemAppBar extends StatelessWidget {
  const CoustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CoustemSercheIcon(),
      ],
    );
  }
}

