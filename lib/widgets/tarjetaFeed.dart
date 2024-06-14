import 'package:flutter/material.dart';
import '../widgets/botonesCard.dart';
import 'descripcionCard.dart';
import '../widgets/imagenCard.dart';
import 'tituloCard.dart';

class TarjetaFeed extends StatelessWidget {
  final String avatar;
  final String name;
  final String description;
  final String imageUrl;

  TarjetaFeed({
    required this.avatar,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TituloCard(avatar: avatar, name: name),
            SizedBox(height: 10),
            DescripcionCard(description: description),
            SizedBox(height: 10),
            ImagenCard(imageUrl: imageUrl),
            SizedBox(height: 10),
            BotonesCard(),
          ],
        ),
      ),
    );
  }
}
