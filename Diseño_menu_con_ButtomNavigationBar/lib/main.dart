// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/HomePrincipal.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "aplicacion para divisas",
      debugShowCheckedModeBanner: false,
      home: HomePrincipal(),
      

    );
  }
}
