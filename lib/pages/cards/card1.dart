import 'package:flutter/material.dart';

class CardHabHum extends StatelessWidget {
  final imgUrl;
  final descripcion;
  CardHabHum(this.imgUrl, this.descripcion);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              width: 150.0,
              height: 100.0,
              child: Image.network(imgUrl),
            ),
            Text(descripcion),
          ],
        ),
      ),
    );
  }
}
