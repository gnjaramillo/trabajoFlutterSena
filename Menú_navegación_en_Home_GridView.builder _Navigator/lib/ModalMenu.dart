// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_3/FuenteDatos.dart';

ModalMenu(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          foregroundColor: const Color.fromARGB(255, 183, 175, 152),
          title: Text("Menu Modal"),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: opcionesAcademicas.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: IconButton(
                onPressed: () {
                  llamadoModalMenu(
                    context,
                    opcionesAcademicas[index]['titulo'],
                    opcionesAcademicas[index]['icono'],
                    opcionesAcademicas[index]['codigo'],
                  );
                },
                icon: Column(
                  children: [
                    Icon(opcionesAcademicas[index]["icono"]),
                    Text(opcionesAcademicas[index]["titulo"]),
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

llamadoModalMenu(BuildContext context, String tituloAppBar, IconData menuIcono, String codigo) {
  showModalBottomSheet(
    isScrollControlled: false,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          title: Text(tituloAppBar),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(menuIcono),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.file_copy),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: codigo == "001"
            ? ListView.builder(
                itemCount: Notas.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(Notas[index]["nombre"]),
                    subtitle: Text(Notas[index]["creditos"].toString()),
                    onTap: () {},
                  );
                },
              )
            : Text("No tiene datos"),
      );
    },
  );
}

// Datos

List opcionesAcademicas = [
  {
    'codigo': '001',
    'titulo': 'Notas',
    'icono': Icons.note,
  },
  {
    'codigo': '002',
    'titulo': 'Calendario',
    'icono': Icons.calendar_today,
  },
  {
    'codigo': '003',
    'titulo': 'Profesores',
    'icono': Icons.people,
  },
{
    'codigo': '004',
    'titulo': 'Asignaturas',
    'icono': Icons.book,
  },
  {
    'codigo': '005',
    'titulo': 'Horarios',
    'icono': Icons.schedule,
  },
  {
    'codigo': '006',
    'titulo': 'Tareas',
    'icono': Icons.assignment,
  },
  {
    'codigo': '007',
    'titulo': 'Exámenes',
    'icono': Icons.assignment_turned_in,
  },
{
    'codigo': '008',
    'titulo': 'Biblioteca',
    'icono': Icons.menu_book,
  },
  {
    'codigo': '009',
    'titulo': 'Eventos',
    'icono': Icons.event,
  },
  {
    'codigo': '010',
    'titulo': 'Laboratorios',
    'icono': Icons.science,
  },
  {
    'codigo': '011',
    'titulo': 'Tutorías',
    'icono': Icons.group,
  },
  {
    'codigo': '012',
    'titulo': 'Proyectos',
    'icono': Icons.group_work,
  },
{
    'codigo': '013',
    'titulo': 'Investigación',
    'icono': Icons.search,
  },
  {
    'codigo': '014',
    'titulo': 'Inscripciones',
    'icono': Icons.how_to_reg,
  },
  {
    'codigo': '015',
    'titulo': 'Aulas Virtuales',
    'icono': Icons.computer,
  },
  {
    'codigo': '016',
    'titulo': 'Recursos Educativos',
    'icono': Icons.school,
  },
  {
    'codigo': '017',
    'titulo': 'Deportes',
    'icono': Icons.sports_soccer,
  },
];