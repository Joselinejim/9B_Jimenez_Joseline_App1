import 'package:flutter/material.dart';
import 'package:social_app/pantallas/buscar.dart';
import 'package:social_app/pantallas/perfil.dart';
import 'package:social_app/pantallas/terminos.dart';
import 'package:social_app/pantallas/formulario.dart';
import '../widgets/tarjetaFeed.dart';
import '../datos/datos.dart';

class PantallaPrincipal extends StatefulWidget {
  @override
  _PantallaPrincipalState createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _paginaPrincipal = 0;

  void onTabTapped(int index) {
    setState(() {
      _paginaPrincipal = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FACEBOOK'),
        backgroundColor: Colors.pink[100],
      ),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _paginaPrincipal,
              children: [
                Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: listaCards.map((card) {
                          return TarjetaFeed(
                            avatar: card["nombre"]![0],
                            name: card["nombre"]!,
                            description: card["descripcion"]!,
                            imageUrl: card["imagen"]!,
                          );
                        }).toList(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Terminos()),
                            );
                          },
                          child: Text('Términos y Condiciones'),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Formulario()),
                            );
                          },
                          child: Text('Formulario'),
                        ),
                      ],
                    ),
                  ],
                ),
                Buscar(),
                Perfil(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaPrincipal,
        backgroundColor: Colors.lightBlue[50],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        onTap: onTabTapped,
      ),
    );
  }
}
