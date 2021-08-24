import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:galeria_virtual/view/home.dart';

Text mostrarTitulo(String texto) {
  return Text(
    texto,
    style: TextStyle(
      fontSize: 15,
      //color: ,
    ),
  );
}

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      UserAccountsDrawerHeader(
          accountName: Text("Usuário", style: TextStyle(fontSize: 15)),
          accountEmail:
              Text("Email Do Usuário", style: TextStyle(fontSize: 15)),
          currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipRRect(
                child: Image.asset("img/user.png"),
                borderRadius: BorderRadius.circular(50),
              ))),
      new ListTile(
          title: Text("Home"),
          subtitle: Text("Página Inicial"),
          trailing: FaIcon(FontAwesomeIcons.chevronRight, size: 40),
          leading: FaIcon(FontAwesomeIcons.home, size: 40, color: Colors.white),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          }),
      new ListTile(
          title: Text("Configurações"),
          trailing: FaIcon(FontAwesomeIcons.chevronRight, size: 40),
          leading: FaIcon(FontAwesomeIcons.cog, color: Colors.white, size: 40),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Text("Não Configuradokkkkkk")));
          }),
      new ListTile(
          title: Text("Sair"),
          subtitle: Text("Desconectar do sistema"),
          trailing: FaIcon(FontAwesomeIcons.chevronRight, size: 40),
          leading: FaIcon(FontAwesomeIcons.signOutAlt,
              size: 40, color: Colors.white),
          onTap: () {}),
    ]));
  }
}
