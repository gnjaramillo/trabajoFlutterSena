import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider de Imágenes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageSliderPage(),
    );
  }
}

class ImageSliderPage extends StatelessWidget {
  final List<Widget> _pages = [
    const SliderPage(
      imagePath: '/assets/est1.jpg',
      title: 'Aprendiz',
      subtitle: '¡Inscríbete al Sena!',
    ),
    const SliderPage(
      imagePath: '/assets/est2.jpg',
      title: 'Prepárate',
      subtitle: '¡El futuro es hoy!',
    ),
    const SliderPage(
      imagePath: '/assets/est2.jpg',
      title: 'Programación de Software',
      subtitle: '¡Despierta tu mente!',
    ),
  ];

  ImageSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider de Imágenes'),
      ),
      body: PageView.builder(
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return _pages[index % _pages.length];
        },
      ),
    );
  }
}

class SliderPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const SliderPage({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: MediaQuery.of(context).size.width * 0.4, // 40% del ancho de la pantalla
            height: MediaQuery.of(context).size.width * 0.4, 
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 32),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
