import 'package:flutter/material.dart';

class NoteContent extends StatelessWidget {
  final controller;
  VoidCallback onSave;

  NoteContent({super.key, required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: onSave,
                child: const Icon(Icons.check),
              ),
            )
          ],
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          // title: text
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              // get user input
              TextFormField(
            controller: controller,
            autofocus: false,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText: "What's on your mind...",
              hintStyle: TextStyle(
                color: Colors.grey[800],
              ),
              focusedBorder: InputBorder.none,
            ),
          ),
        ));
  }
}
