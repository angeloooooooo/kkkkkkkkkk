import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:galeria_virtual/view/recursos/Home2.dart';
import 'package:galeria_virtual/view/recursos/barraTarefas.dart';
import 'package:galeria_virtual/view/recursos/menu.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraTarefas(),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            new SizedBox(height: 20), // Espaçamento

            new Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Column(children: [
                //Título
                new Text(
                  "Bem, o que você deseja?",
                  style:
                      TextStyle(fontSize: 18, color: Colors.blueGrey.shade50),
                ),

                new SizedBox(height: 20), // Espaçamento

                // Botão Procurar por Obras(tem q ajeitar ainda)
                new Builder(builder: (BuildContext context) {
                  return ElevatedButton(
                    child: Container(
                      width: 250,
                      padding: EdgeInsets.all(13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new FaIcon(
                            FontAwesomeIcons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                          new Text(
                            "Visualizar Galeria",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home2()));
                    },
                    style:
                        ElevatedButton.styleFrom(primary: Colors.grey.shade900),
                  );
                }),

                SizedBox(height: 15),

                // Botão de Adicionar Obras(é a ideia, mas tmb tem que ajeitar)
                new Builder(builder: (BuildContext context) {
                  return ElevatedButton(
                    child: Container(
                      width: 250,
                      padding: EdgeInsets.all(13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new FaIcon(FontAwesomeIcons.plus,
                              size: 30, color: Colors.white),
                          new Text(
                            "Artistas",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  new Text("Em desinvolvimento")) //cadastro
                          );
                    },
                    style:
                        ElevatedButton.styleFrom(primary: Colors.cyan.shade900),
                  );
                })
              ]),
            )
          ],
        ),
      ),
    );
  }
}
