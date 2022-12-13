import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

class ListGamePage extends StatelessWidget {
  final List<Map<String, String>> _cardsItems = <Map<String, String>>[
    {
      'fechaJuego': "9/12/2022",
      'horaJuego': "16:00 PM",
      'lugarJuego': "Doha",
      'equipoLocal': "argentina",
      'equipoVisita': "holanda",
      'resultadoLocal': '0',
      'resultadoVisita': '0',
      'tiempo': "00:00"
    },
    {
      'fechaJuego': "1/1/1",
      'horaJuego': "9:00",
      'lugarJuego': "Doha",
      'equipoLocal': "croacia",
      'equipoVisita': "brasil",
      'resultadoLocal': '0',
      'resultadoVisita': '0',
      'tiempo': "00:00"
    },
    {
      'fechaJuego': "9/12/2022",
      'horaJuego': "16:00 PM",
      'lugarJuego': "Doha",
      'equipoLocal': "marruecos",
      'equipoVisita': "portugal",
      'resultadoLocal': '0',
      'resultadoVisita': '0',
      'tiempo': "00:00"
    },
    {
      'fechaJuego': "9/12/2022",
      'horaJuego': "16:00 PM",
      'lugarJuego': "Doha",
      'equipoLocal': "inglaterra",
      'equipoVisita': "francia",
      'resultadoLocal': '0',
      'resultadoVisita': '0',
      'tiempo': "00:00"
    },
  ];

  ListGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: const Text("Mundial Qatar 2022"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _cardsItems.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: CardGame(
                  fechaJuego: _cardsItems[index]['fechaJuego'].toString(),
                  horaJuego: _cardsItems[index]['horaJuego'].toString(),
                  lugarJuego: _cardsItems[index]['lugarJuego'].toString(),
                  equipoLocal: _cardsItems[index]['equipoLocal'].toString(),
                  equipoVisita: _cardsItems[index]['equipoVisita'].toString(),
                  resultadoLocal:
                      _cardsItems[index]['resultadoLocal'].toString(),
                  resultadoVisita:
                      _cardsItems[index]['resultadoVisita'].toString(),
                  tiempo: _cardsItems[index]['tiempo'].toString()),
              onTap: () {
                print("hola");
                Navigator.pushNamed(context, 'gameDetail');
              },
            );
          }),
    );
  }
}
