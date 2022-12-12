import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/stats_page.dart';

class CardStats extends StatelessWidget {
  final String foto;
  final String logro;
  final String nombre;
  final String variante;
  final String pais;
  final String cantidad;

  const CardStats({
    super.key,
    required this.logro,
    required this.nombre,
    required this.variante,
    required this.pais,
    required this.cantidad,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children:[
          Image.asset(foto),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(logro),
                Text(nombre),
                Text(variante),
                Text(pais),
                Text(cantidad)
              ],
            ),
          )]
      ),
    );
  }
}
