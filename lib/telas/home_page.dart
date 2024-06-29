import 'package:flutter/material.dart';
import 'package:loginecadastro/services/authServices.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Tela Inicial'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Deslogar'),
              onTap: () {
                Authservices().deslogar();
              },
            )
          ],
        ),
      ),
    );
  }
}
