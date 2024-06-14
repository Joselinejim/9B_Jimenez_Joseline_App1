import 'package:flutter/material.dart';

class ImagenCard extends StatelessWidget {
  final String imageUrl;

  ImagenCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(imageUrl),
    );
  }
}
