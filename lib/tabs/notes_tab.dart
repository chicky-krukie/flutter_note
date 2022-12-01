import 'package:flutter/material.dart';
import 'package:flutter_note/pages/note_content.dart';

class NotesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Add notes Here',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => NoteContent())
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
