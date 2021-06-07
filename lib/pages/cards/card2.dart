import 'package:flutter/material.dart';

class CardHabTec extends StatelessWidget {
  final imgUrl;
  final descripcion;
  CardHabTec(this.imgUrl, this.descripcion);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              width: 150.0,
              height: 100.0,
              child: Image.network(imgUrl),
            ),
            Column(
              children: <Widget>[
                Text(
                  descripcion,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
