
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/ModalMenu.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}



class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "store",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.blueAccent,
          title: Text("mercado libre"),
          leading: IconButton(
            onPressed: () {

              ModalMenu(context);
            
            
          },icon: Icon(Icons.menu)),


        ),

        drawer: Drawer(
          child: Image(image: NetworkImage("https://contramarketing.com/wp-content/uploads/2020/07/mercadolibre-lujo-980x552.jpg")),
        ),
      ),
      


    );
  }
}