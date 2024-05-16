
import 'package:flutter/material.dart';
import 'package:flutter_application_2/ModalMenu.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("Store"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[400],
          foregroundColor: Colors.black,
          title: Text("Mercado Libre Col"),
          leading: IconButton(
            onPressed: () {
              modalMenu(context);
          },
          icon: Icon(Icons.menu_rounded)),
        ),
       
      ),
    );
  }
}