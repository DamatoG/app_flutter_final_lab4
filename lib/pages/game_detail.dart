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
    'tiempo': "00:00"
  };

  GameScreen({super.key});

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
            height: 20,
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Detalle del Partido'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('0'),
                        Text('Disparos'),
                        Text('0'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('0'),
                        Text('Ataques'),
                        Text('0'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('0'),
                        Text('Poseción'),
                        Text('0'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('0'),
                        Text('Tarjetas'),
                        Text('0'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('0'),
                        Text('Corners'),
                        Text('0'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
