import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: SocialFeed(),
    );
  }
}


class SocialFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FACEBOOK'),
        
      ),
      body: ListView(
        children: [
          PostWidget(
            avatar: 'J',
            name: 'Joseline Jiménez López',
            description: 'Buen día a todos, sean bienvenidos a este sitio en el que encontraran memees y diversión jajaja',
            imageUrl: 'https://st.depositphotos.com/1001911/55508/v/450/depositphotos_555089554-stock-illustration-happy-emoji-emoticon-showing-double.jpg',
          ),
          PostWidget(
            avatar: 'J',
            name: 'Joseline Jiménez López',
            description: 'Quiero mostrarles una de mis canciones favoritas que hacen que no pueda parar de escuchar.',
            imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bcc96d39-785d-4796-bb89-fede2ff7fe12/dfbl1fd-bfdf8fab-d206-4292-bebd-cd3b3621a61e.jpg/v1/fill/w_894,h_894,q_70,strp/blackpink___pink_venom__album_cover__by_kyliemaine_dfbl1fd-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTE1MSIsInBhdGgiOiJcL2ZcL2JjYzk2ZDM5LTc4NWQtNDc5Ni1iYjg5LWZlZGUyZmY3ZmUxMlwvZGZibDFmZC1iZmRmOGZhYi1kMjA2LTQyOTItYmViZC1jZDNiMzYyMWE2MWUuanBnIiwid2lkdGgiOiI8PTExNTEifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.-tckTiduEv_EaRs5P32bYOcxsGJRxaR4-JrbcOW6FH8',
          ),
          PostWidget(
            avatar: 'J',
            name: 'Joseline Jiménez López',
            description: 'Se encontraron con el michi bebedor de la suerte.',
            imageUrl: 'https://media.istockphoto.com/id/1392916925/es/foto/lindo-gato-con-sombrero-de-cumplea%C3%B1os-cerca-de-la-bandeja-con-whisky-en-casa-resaca-despu%C3%A9s-de.jpg?s=612x612&w=0&k=20&c=k2UjV88fIfnAynsRju6r4ksYd0pToJfRNzAOUmVy2wg=',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
          ),
        ],
      ),
    );
  }
}

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
                      icon: Icon(Icons.thumb_up),
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