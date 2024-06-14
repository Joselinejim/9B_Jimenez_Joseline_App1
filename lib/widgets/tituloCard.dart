import 'package:flutter/material.dart';

class TituloCard extends StatelessWidget {
  final String avatar;
  final String name;

  TituloCard({required this.avatar, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text(avatar),
        ),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
