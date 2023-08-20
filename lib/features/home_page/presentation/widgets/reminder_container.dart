import 'dart:math';

import 'package:flutter/material.dart';

class ReminderContainer extends StatelessWidget {
  const ReminderContainer({
    required this.iconData,
    required this.reminderCount,
    required this.description,
    super.key,
  });

  final IconData iconData;
  final int reminderCount;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          // border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(8.0)
        ),
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [const Icon(Icons.help), Text(10.toString())],
            ),
            const Text("description"),
          ],
        ),
      ),
    );
  }
}
