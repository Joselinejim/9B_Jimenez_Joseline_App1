import 'package:flutter/material.dart';

class DescripcionCard extends StatelessWidget {
  final String description;

  DescripcionCard({required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(description);
  }
}
