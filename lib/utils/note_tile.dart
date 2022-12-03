import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NoteTile extends StatelessWidget {
  final String noteName;
  Function(BuildContext)? deleteFunction;
  

  NoteTile({
    super.key,
    required this.noteName,
    required this.deleteFunction,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(18),
            )
          ],
        ),
      child: Container(
        padding: const EdgeInsets.all(25.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          noteName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    );
  }
}
