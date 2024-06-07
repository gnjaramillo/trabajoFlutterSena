// ignore: file_names

// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_3/ModalMenu.dart';


class InicioPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sección Inicio'),
        backgroundColor: Color.fromARGB(255, 3, 45, 79),
        foregroundColor: const Color.fromARGB(255, 231, 235, 241),
      ),
      body: Center(
        child: Text(
          'Sección Inicio',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
