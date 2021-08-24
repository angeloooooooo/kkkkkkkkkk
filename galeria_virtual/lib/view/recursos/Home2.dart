import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galeria_virtual/view/recursos/barraTarefas.dart';
import 'package:galeria_virtual/view/recursos/menu.dart';

class Home2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeTwoState();
}

class HomeTwoState extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraTarefas(),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //new SizedBox()
            new Container(
              width: 500,
              height: 500,
              color: Colors.grey.shade200,
              child: Image.asset("img/goku.jpg"),
            ),
            new Text("Goku rebaixado", textScaleFactor: (2)),

            new Text(
              "Nós fico sem tempo pra achar um desenho muito bom então foi o meu memokkkkkkkk",
              textScaleFactor: 2,
            )
          ],
        ),
      ),
    );
  }
}
