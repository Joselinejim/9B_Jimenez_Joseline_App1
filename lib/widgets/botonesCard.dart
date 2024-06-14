import 'package:flutter/material.dart';

class BotonesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.thumb_up, color: Colors.blue), 
              onPressed: () {},
            ),
            Text('Me gusta'),
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.comment),
              onPressed: () {},
            ),
            Text('Comentar'),
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
            Text('Compartir'),
          ],
        ),
      ],
    );
  }
}
