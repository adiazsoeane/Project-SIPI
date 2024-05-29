//solicitudes

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solicitudes',
      theme: ThemeData.dark(),
      home: SolicitudesScreen(),
    );
  }
}

class SolicitudesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitudes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: SolicitudForm(
                      title: 'CRÍTICO',
                      fields: [
                        'DNI / Razón Social',
                        'Dirección de E-mail',
                        'Nombre de usuario',
                        'Contraseña',
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Expanded(
                    child: SolicitudForm(
                      title: 'CREADOR',
                      fields: [
                        'Nombre de usuario',
                        'Dirección de E-mail',
                        'Contraseña',
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class SolicitudForm extends StatelessWidget {
  final String title;
  final List<String> fields;

  SolicitudForm({required this.title, required this.fields});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 24.0),
          for (String field in fields)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: field,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          SizedBox(height: 24.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón de Solicitar
              },
              child: Text('SOLICITAR'),
            ),
          ),
        ],
      ),
    );
  }
}


//subscripciones
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Búsqueda',
      theme: ThemeData.dark(),
      home: BusquedaScreen(),
    );
  }
}

class BusquedaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar...',
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                CategoriaTag('Autos'),
                CategoriaTag('Multiplayer'),
                CategoriaTag('Accion'),
                CategoriaTag('Estrategia'),
                CategoriaTag('Co-op'),
                CategoriaTag('RPG'),
                CategoriaTag('Aventura'),
                CategoriaTag('Shooter'),
                CategoriaTag('MMO'),
                CategoriaTag('Singleplayer'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriaTag extends StatelessWidget {
  final String label;

  CategoriaTag(this.label);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[800],
      labelStyle: TextStyle(color: Colors.white),
    );
  }
}
