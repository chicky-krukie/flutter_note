import 'package:flutter/material.dart';
import 'package:flutter_note/tabs/notes_tab.dart';
import 'package:flutter_note/tabs/todo_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.check_box_rounded,
                  color: Colors.amber,
                ),
              ),
            ]),
            const Expanded(
                child: TabBarView(
              children: [
                //tab 1
                NotesTab(),
                //tab 2
                TodoTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
