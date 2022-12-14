import 'package:flutter/material.dart';

class CardGame extends StatelessWidget {
  final String fechaJuego;
  final String horaJuego;
  final String lugarJuego;
  final String equipoLocal;
  final String equipoVisita;
  final String resultadoLocal;
  final String resultadoVisita;
  final String tiempo;

  const CardGame(
      {super.key,
      required this.fechaJuego,
      required this.horaJuego,
      required this.lugarJuego,
      required this.equipoLocal,
      required this.equipoVisita,
      required this.resultadoLocal,
      required this.resultadoVisita,
      required this.tiempo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fecha: $fechaJuego',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Hora: $horaJuego',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Lugar: $lugarJuego',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/logos/logo-$equipoLocal.png',
                              width: 60,
                              height: 60,
                            ),
                            Text(equipoLocal.toUpperCase(),
                                style: TextStyle(fontSize: 20))
                          ],
                        ),
                        Column(
                          children: [
                            Text('$resultadoLocal - $resultadoVisita',
                                style: TextStyle(fontSize: 40)),
                            Text(tiempo)
                          ],
                        ),
                        Column(children: [
                          Image.asset(
                              'assets/images/logos/logo-$equipoVisita.png',
                              width: 60,
                              height: 60),
                          Text(equipoVisita.toUpperCase(),
                              style: TextStyle(fontSize: 20))
                        ])
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
