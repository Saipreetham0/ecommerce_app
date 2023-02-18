import 'package:flutter/material.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          )),
    );
  }
}
