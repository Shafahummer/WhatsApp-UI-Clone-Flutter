import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WCards extends StatelessWidget {
  final String name, imageUrl, time;

  WCards(this.name, this.imageUrl, this.time);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        foregroundColor: Colors.deepPurple,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(time),
    );
  }
}
