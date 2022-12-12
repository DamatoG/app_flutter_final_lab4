import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color.fromARGB(255, 246, 247, 247), Color.fromARGB(255, 221, 225, 231)],
      )),
      child: Drawer(
          child: Material(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 10),
            buildSearchBar(),
            const SizedBox(height: 10),
            const Divider(color: Colors.black),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            buildMenuItem(
              ruta: 'home',
              context,
              text: "Inicio",
              icon: Icons.home,
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              ruta: 'listGames',
              context,
              text: "Proximos Partidos",
              icon: Icons.calendar_month_outlined,
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              ruta:'stats',
              context,
              text: "Estadisticas",
              icon: Icons.stacked_bar_chart_sharp,
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              context,
              text: "Historial (Proximamente)",
              icon: Icons.history,
            ),
          ],
        ),
      )),
    );
  }
}

Widget buildMenuItem(
  BuildContext context, {
  required String text,
  required IconData icon,
  ruta,
}) {
  const color = Colors.white;
  const hoverColor = Color.fromARGB(232, 230, 8, 196);

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: const TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: () {
      Navigator.pushNamed(context, ruta);
    },
  );
}

Widget buildSearchBar() {
  const color = Colors.black;

  return TextField(
    style: const TextStyle(color: color),
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: 'Buscar',
      hintStyle: const TextStyle(color: color),
      prefixIcon: const Icon(Icons.search, color: color),
      filled: true,
      fillColor: Color.fromARGB(172, 42, 87, 222),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color.withOpacity(0.7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color.withOpacity(0.7)),
      ),
    ),
  );
}
