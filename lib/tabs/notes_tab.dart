import 'package:flutter/material.dart';
import 'package:flutter_note/utils/note_tile.dart';
import 'package:flutter_note/pages/note_content.dart';

class NotesTab extends StatefulWidget {
  const NotesTab({super.key});

  @override
  State<NotesTab> createState() => _NotesTabState();
}

class _NotesTabState extends State<NotesTab> {
  // List of notes
  List noteList = [
    ['Note 1'],
    ['Note 2'],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
        body: ListView.builder(
            itemCount: noteList.length,
            itemBuilder: ((context, index) {
              return NoteTile(noteName: noteList[index][0],);
            })),
            floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => NoteContent())
            );
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
