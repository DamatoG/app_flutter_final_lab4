import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      color: Color.fromARGB(255, 180, 144, 91),
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 10),
                buildSearchBar(),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.black
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          buildMenuItem(
            text: "Inicio",
            icon: Icons.home,
          ),
          const SizedBox(height: 10),
          buildMenuItem(
            text: "Proximos Partidos",
            icon: Icons.calendar_month_outlined,
          ),
          const SizedBox(height: 10),
          buildMenuItem(
            text: "Estadisticas (Proximamente)",
            icon: Icons.stacked_bar_chart_sharp,
          ),
            const SizedBox(height: 10),
          buildMenuItem(
            text: "Historial (Proximamente)",
            icon: Icons.history,
          ),
        ],
      ),
    ));
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  const color = Colors.black;
  const hoverColor = Color.fromARGB(232, 230, 8, 196);

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: const TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: () {},
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
        fillColor: Colors.white12,
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
