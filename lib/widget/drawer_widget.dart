import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(232, 56, 22, 223),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 30),
            buildMenuItem(
              text: "Home",
              icon: Icons.home,
          )
        ],
      ),
    ));
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  final color = Color.fromARGB(255, 183, 34, 34);
  final hoverColor = Color.fromARGB(232, 230, 8, 196);

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: (){},
  );
}
