import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: Colors.blueAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú de Navegación con Tabs'),
      ),
      body: Column(
        children: [
          CustomTabBar(controller: _tabController),
          Expanded(
            child: CustomTabBarView(controller: _tabController),
          ),
        ],
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final TabController controller;

  const CustomTabBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: TabBar(
        controller: controller,
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          Tab(
            icon: Icon(Icons.article_outlined),
            text: 'Noticias',
          ),
          Tab(
            icon: Icon(Icons.message),
            text: 'Mensajes',
          ),
          Tab(
            icon: Icon(Icons.person),
            text: 'Perfil',
          ),
        ],
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white60,
        indicatorColor: Colors.transparent,
      ),
    );
  }
}

class CustomTabBarView extends StatelessWidget {
  final TabController controller;

  const CustomTabBarView({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: TabBarView(
        controller: controller,
        children: [
          _buildTabContent('Pestaña Noticias', Icons.article_outlined, context),
          _buildTabContent('Pestaña Mensajes', Icons.message, context),
          _buildTabContent('Pestaña Perfil', Icons.person, context),
        ],
      ),
    );
  }

  Widget _buildTabContent(String title, IconData icon, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 64,
          color: Theme.of(context).colorScheme.secondary,
        ),
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
