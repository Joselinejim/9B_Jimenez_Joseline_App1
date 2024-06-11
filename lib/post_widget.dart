import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String avatar;
  final String name;
  final String description;
  final String imageUrl;

  PostWidget({
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
            Row(
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
            ),
            SizedBox(height: 10),
            Text(description),
            SizedBox(height: 10),
            Center(
              child: Image.network(imageUrl),
            ),
            SizedBox(height: 10),
            Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
