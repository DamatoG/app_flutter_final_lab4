//1- Por cada pantalla se crea un archivo .dart y se guarda en el directorio lib/pages
//2- La ruta de dicha pantalla se exporta en lib/routers
//3- se agrega en el objeto routes del archivo main.dart
// se importa a travez de pages/pages.dart para evitar un listado extenso de importaciones en el main (buenas practicas)

//Los widgets (componentes que se reutilizan en distintas pantallas) se crean dentro de la carpeta
//widgets y se importan en el archivo de la pantalla que lo utilizará
//con la ruta import '../widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'listGames': (context) => ListGamePage(),
        'gameDetail': (context) => GameScreen(),
        'stats': (context) => StatsPage(),
      },
    );
  }
}
