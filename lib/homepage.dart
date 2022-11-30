import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('T A B'),
        // ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            TabBar(tabs: const [
              Tab(icon: Icon(
                Icons.book,
                color: Colors.amber,
                ),
              ),
              Tab(icon: Icon(
                Icons.check_box_rounded,
                color: Colors.amber,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
