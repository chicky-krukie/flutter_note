import 'package:flutter/material.dart';
import 'package:flutter_note/utils/note_tile.dart';
import 'package:flutter_note/pages/note_content.dart';

class NotesTab extends StatefulWidget {
  const NotesTab({super.key});

  @override
  State<NotesTab> createState() => _NotesTabState();
}

class _NotesTabState extends State<NotesTab> {
  // text controller
  final _controller = TextEditingController();

  // List of notes
  List noteList = [
    ['Note 1'],
    ['Note 2'],
  ];

  // save new notes
  void saveNewNotes() {
    setState(() {
      noteList.add([_controller.text]);
      _controller.clear();
      Navigator.of(context).pop();
    });
  }

  // delete notes
  void deleteNotes(int index) {
    setState(() {
      noteList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
        body: ListView.builder(
            itemCount: noteList.length,
            itemBuilder: ((context, index) {
              return NoteTile(
                noteName: noteList[index][0],
                deleteFunction: (context) => deleteNotes(index),
              );
            })),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NoteContent(
                          controller: _controller,
                          onSave: saveNewNotes,
                        )));
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
