import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Mundial Qatar 2022"),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Card(
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
                          "Fecha: dd/mm/aa",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Hora: 00:00 AM",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Lugar: Doha",
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
                                Image.asset('assets/images/logo-argentina.png'),
                                Text("Argentina",
                                    style: TextStyle(fontSize: 20))
                              ],
                            ),
                            Column(
                              children: [
                                Text("0-0", style: TextStyle(fontSize: 40)),
                                Text("00:00")
                              ],
                            ),
                            Column(children: [
                              Image.asset('assets/images/logo-holanda.png'),
                              Text("Paises bajos",
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
          )),
          CardGame(
              fechaJuego: "9/12/2022",
              horaJuego: "16:00 PM",
              lugarJuego: "Doha",
              equipoLocal: "argentina",
              equipoVisita: "holanda",
              resultadoLocal: "0",
              resultadoVisita: "0",
              tiempo: "00:00"),
        ],
      ),
    );
  }
}
