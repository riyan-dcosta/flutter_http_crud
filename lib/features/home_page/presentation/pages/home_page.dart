import 'package:flutter/material.dart';
import 'package:http_crud_dummy/features/home_page/presentation/widgets/reminder_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchBar(
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 8.0)),
                trailing: [
                  Icon(Icons.search),
                ]),
          ),
          const Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              ReminderContainer(
                iconData: Icons.add,
                reminderCount: 11,
                description: "add",
              ),
              ReminderContainer(
                iconData: Icons.add,
                reminderCount: 11,
                description: "add",
              ),
              ReminderContainer(
                iconData: Icons.add,
                reminderCount: 11,
                description: "add",
              ),
              ReminderContainer(
                iconData: Icons.add,
                reminderCount: 11,
                description: "add",
              )
            ],
          ),
          const Spacer(),
          Container(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add),
                    Text("Add Reminder"),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
