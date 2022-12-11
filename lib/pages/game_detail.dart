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
