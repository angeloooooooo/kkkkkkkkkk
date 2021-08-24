import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraTarefas extends AppBar {
  BarraTarefas()
      : super(
            centerTitle: true,
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.bars,
                    size: 32,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer());
            }),
            title: Text("Galeria Virtual",
                style: TextStyle(fontSize: 28, color: Colors.white)),
            iconTheme: IconThemeData(color: Colors.white));
}
