// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_3/seccionInicio.dart';
import 'package:flutter_application_3/seccionDeportes.dart';

ModalMenu(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          foregroundColor: const Color.fromARGB(255, 183, 175, 152),
          title: Text("Menú"),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: listaSecciones.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context); // Close the modal
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        switch (listaSecciones[index]['codigo']) {
                          case '001':
                            return InicioPagina();
                          case '002':
                            return DeportesPagina();
                          // Add more cases as needed
                          default:
                            return InicioPagina();
                        }
                      },
                    ),
                  );
                },
                icon: Column(
                  children: [
                    Icon(listaSecciones[index]['icono']),
                    Text(listaSecciones[index]['titulo']),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}

// Datos

List listaSecciones = [
  {
    'codigo': '001',
    'titulo': 'Inicio',
    'icono': Icons.home,
  },
  {
    'codigo': '002',
    'titulo': 'Deportes',
    'icono': Icons.sports_soccer,
  },
  {
    'codigo': '003',
    'titulo': 'Tecnología',
    'icono': Icons.computer,
  },
  {
    'codigo': '004',
    'titulo': 'Entretenimiento',
    'icono': Icons.movie,
  },
];
