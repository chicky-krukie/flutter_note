import 'package:flutter/material.dart';
import 'package:flutter_note/utils/note_tile.dart';
import 'package:flutter_note/pages/note_content.dart';


class NotesTab extends StatelessWidget {
  const NotesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
        body: ListView(
          children: [
            NoteTile(),
            NoteTile(),
            NoteTile(),
          ],
        ),
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
