import 'package:flutter/material.dart';
import './cards/card1.dart';
import './cards/card2.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Habilidades Humanas",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardHabHum(
                "https://www.flaticon.es/svg/vstatic/svg/1484/1484584.svg?token=exp=1615162944~hmac=8d08d90b993ae0706e1df567e370472d",
                "Comunicativa",
              ),
              CardHabHum(
                "https://www.flaticon.es/svg/vstatic/svg/4185/4185622.svg?token=exp=1615162647~hmac=60bb99fc37404203768fc566c938b94d",
                "Colaborativa",
              ),
              CardHabHum(
                "https://www.flaticon.es/svg/vstatic/svg/4185/4185793.svg?token=exp=1615162647~hmac=6e003b5c1dc70bc292e327fe9fb0a6d1",
                "Solidaria",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Habilidades Tecnicas",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        DefaultTabController(
          length: 2,
          child: Expanded(
            child: Column(
              children: <Widget>[
                TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.blue,
                  tabs: [
                    Tab(text: "Lenguajes"),
                    Tab(text: "Frameworks"),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                        height: 150.0,
                        child: ListView(
                          children: <Widget>[
                            // gridDelegate: SleverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ),
                            CardHabTec(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/230px-HTML5_logo_and_wordmark.svg.png",
                              "HolaMundo",
                            ),
                            CardHabTec(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/1200px-CSS3_logo_and_wordmark.svg.png",
                              "HolaMundo",
                            ),
                            CardHabTec(
                                "https://www.grupocodesi.com/images/javascript.png",
                                "HOlaMundo"),
                          ],
                        ),
                      ),
                      Container(
                        height: 150.0,
                        child: ListView(
                          children: <Widget>[
                            // gridDelegate: SleverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ),
                            CardHabTec(
                                "https://camo.githubusercontent.com/a664defdd5c2ec93a3fbfb51e0f2aaafa5dc57bf1e13aa47456ced037b3cebe8/68747470733a2f2f676574626f6f7473747261702e636f6d2f646f63732f352e302f6173736574732f6272616e642f626f6f7473747261702d6c6f676f2d736861646f772e706e67",
                                "HolaMundo"),
                            CardHabTec(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1200px-Vue.js_Logo_2.svg.png",
                                "HolaMundo"),
                            CardHabTec(
                                "https://avatars.githubusercontent.com/u/10342521?s=280&v=4",
                                "HolaMundo"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
