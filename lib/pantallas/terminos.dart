import 'package:flutter/material.dart';

class Terminos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Términos y Condiciones'),
        backgroundColor: Colors.pink[100],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Introducción',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Esta página web es propiedad y está operada por Joseline Jiménez López. '
                  'Estos Términos establecen los términos y condiciones bajo los cuales puedes ver contenido de calidad. '
                  'Esta página web ofrece a los visitantes tener unos momentos agradables en los que puedes disfrutar de grandes memes de calidad.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                Text(
                  'Aceptación de los Términos',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Al acceder o usar el sitio web, aceptas cumplir y estar sujeto a estos Términos. '
                  'Si no estás de acuerdo con estos Términos, no debes usar el sitio web. Nos reservamos el derecho de modificar estos Términos en cualquier momento, '
                  'y es tu responsabilidad revisar estos Términos periódicamente para estar al tanto de cualquier cambio. '
                  'Tu uso continuado del sitio web después de cualquier cambio constituye tu aceptación de los nuevos Términos.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                Text(
                  'Propiedad Intelectual',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Este sitio web y todo su contenido, incluidos pero no limitados a textos, gráficos, imágenes y software, están protegidos por derechos de autor, '
                  'marcas registradas y otras leyes de propiedad intelectual. No puedes reproducir, distribuir, modificar, crear trabajos derivados de, '
                  'exhibir públicamente, ejecutar públicamente, republicar, descargar, almacenar o transmitir cualquier material de nuestro sitio web sin nuestro consentimiento previo por escrito.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                Text(
                  'Suspensión y Cancelación',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Nos reservamos el derecho de suspender o cancelar tu acceso a nuestro sitio web, sin previo aviso ni responsabilidad, por cualquier motivo, '
                  'incluido si, a nuestra entera discreción, consideramos que has violado alguno de estos Términos.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
