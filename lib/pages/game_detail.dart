import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

class GameScreen extends StatelessWidget {
  final juego = {
    'fechaJuego': "9/12/2022",
    'horaJuego': "16:00 PM",
    'lugarJuego': "Doha",
    'equipoLocal': "argentina",
    'equipoVisita': "holanda",
    'resultadoLocal': '0',
    'resultadoVisita': '0',
    'tiempo': "00:00",
  };

  final detalleJuego = {
    'remates': {"local": '0', 'visita': '0'},
    'ataques': {"local": '0', 'visita': '0'},
    'posesion': {"local": '0', 'visita': '0'},
    'tarjetas': {"local": '0', 'visita': '0'},
    'corners': {"local": '0', 'visita': '0'}
  };

  GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text("Mundial Qatar 2022"),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CardGame(
              fechaJuego: juego['fechaJuego'].toString(),
              horaJuego: juego['horaJuego'].toString(),
              lugarJuego: juego['lugarJuego'].toString(),
              equipoLocal: juego['equipoLocal'].toString(),
              equipoVisita: juego['equipoVisita'].toString(),
              resultadoLocal: juego['resultadoLocal'].toString(),
              resultadoVisita: juego['resultadoVisita'].toString(),
              tiempo: juego['tiempo'].toString()),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Detalle del Partido',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(detalleJuego['remates']!['local'].toString(),
                          style: TextStyle(fontSize: 20)),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(detalleJuego['ataques']!['local'].toString(),
                          style: TextStyle(fontSize: 20)),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        detalleJuego['posesion']!['local'].toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        detalleJuego['tarjetas']!['local'].toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        detalleJuego['corners']!['local'].toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Remates',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Ataques',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Posesion',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Tarjetas',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Tiros de esquina',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        detalleJuego['remates']!['visita'].toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        detalleJuego['ataques']!['visita'].toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        detalleJuego['posesion']!['visita'].toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        detalleJuego['tarjetas']!['visita'].toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        detalleJuego['corners']!['visita'].toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
