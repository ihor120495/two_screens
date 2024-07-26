import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Другий екран'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          Color itemColor = index % 2 == 0 ? Colors.white : Colors.yellow;
          return Container(
            color: itemColor,
            padding: EdgeInsets.all(20),
            child: Text('Елемент $index'),
          );
        },
      ),
    );
  }
}
