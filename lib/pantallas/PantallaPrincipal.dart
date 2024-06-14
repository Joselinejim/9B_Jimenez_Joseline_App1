import 'package:flutter/material.dart';
import '../datos/datos.dart';
import '../widgets/tarjetaFeed.dart';

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FACEBOOK'),
        backgroundColor: Colors.pink[100], 
      ),
      body: ListView(
        children: listaCards.map((card) {
          return TarjetaFeed(
            avatar: card["nombre"]![0],  // Primera letra del nombre
            name: card["nombre"]!,
            description: card["descripcion"]!,
            imageUrl: card["imagen"]!,
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue[50], 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.red),
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
