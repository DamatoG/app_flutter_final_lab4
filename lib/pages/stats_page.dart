import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

import '../widget/drawer_widget.dart';

class StatsPage extends StatelessWidget {
  final List<Map<String, String>> _cardsItems = <Map<String, String>>[
    {
      'foto': 'assets/images/stats/Klose.png',
      'logro': "MAYOR CANTIDAD DE GOLES",
      'nombre': "MIROSLAV KLOSE",
      'variante': "GOLES: 16",
      'pais': "PAIS: ALEMANIA",
      'cantidad': "MUNDIALES JUGADOS: 4",
    },
    {
      'foto': 'assets/images/espania.png',
      'logro': "MAYOR CANTIDAD DE PARTIDOS",
      'nombre': "LOTHAR MATTHAUS",
      'variante': "PARTIDOS: 25",
      'pais': "PAIS: ALEMANIA",
      'cantidad': "MUNDIALES JUGADOS: 5",
    },
    {
      'foto': 'assets/images/Klose.png',
      'logro': "MAYOR CANTIDAD DE ASISTENCIAS",
      'nombre': "PELÉ",
      'variante': "ASISTENCIAS: 10",
      'pais': "PAIS: BRASIL",
      'cantidad': "MUNDIALES JUGADOS: 4",
    },
    {
      'foto': 'assets/images/Klose.png',
      'logro': "MAXIMO GOLEADOR",
      'nombre': "MIROSLAV KLOSE",
      'variante': "GOLES: 16",
      'pais': "PAIS: ALEMANIA",
      'cantidad': "MUNDIALES JUGADOS: 4",
    },
  ];
  StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Mundial Qatar 2022"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _cardsItems.length,
          itemBuilder: (context, index) {
            return SizedBox(
                child: CardStats(
              foto: _cardsItems[index]['foto'].toString(),
              logro: _cardsItems[index]['logro'].toString(),
              nombre: _cardsItems[index]['nombre'].toString(),
              variante: _cardsItems[index]['variante'].toString(),
              pais: _cardsItems[index]['pais'].toString(),
              cantidad: _cardsItems[index]['cantidad'].toString(),
            ));
          }),
    );
  }
}
