import 'package:flutter/material.dart';

class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Image.network(
            "https://avatars.githubusercontent.com/u/40403001?v=4",
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Center(
            child: Text(
              "Hola Amigos",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: Text(
            "Mi Nombre es Magdalena, soy un Ingeniera de Software, me gusta programar y hacer aplicasiones. Actualmente me encuentro estudiando Ing. Sistemas en el TECNM Campus Ajalpan",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ],
    );
  }
}
