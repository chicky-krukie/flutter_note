import 'package:flutter/material.dart';

class TodoTab extends StatelessWidget {
  const TodoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Add Todo Here',
          style: TextStyle(color: Colors.grey)
          ),
      ),
    );
  }
}