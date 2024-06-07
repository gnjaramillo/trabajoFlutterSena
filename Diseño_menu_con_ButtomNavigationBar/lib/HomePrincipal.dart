// ignore_for_file: prefer_const_constructors, prefer_final_fields, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_3/ModalMenu.dart';
import 'package:flutter_application_3/seccionDeportes.dart'; 
import 'package:flutter_application_3/seccionInicio.dart'; 

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  int _selectedIndex = 0;

  // Lista de pantallas para el BottomNavigationBar
  static List<Widget> _pages = <Widget>[
    InicioPagina(),
    DeportesPagina(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "store",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 45, 79),
          foregroundColor: const Color.fromARGB(255, 231, 235, 241),
          title: Text("Aplicación de Noticias"),
          leading: IconButton(
            onPressed: () {
              ModalMenu(context);
            },
            icon: Icon(Icons.menu),
          ),
        ),
        // drawer: Drawer(
        //   child: Image(
        //     image: NetworkImage("https://contramarketing.com/wp-content/uploads/2020/07/mercadolibre-lujo-980x552.jpg"),
        //   ),
        // ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: 'Deportes',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
