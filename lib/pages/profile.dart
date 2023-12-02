import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meka°App",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //trailing: Icon(Icons.person),
            ),
            ListTile(
              title: Text(
                "Commandes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Commande en cours ...",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Favorits",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Voir ses realisations"),
              //trailing: Icon(Icons.favorite),
            ),
            ListTile(
              title: Text(
                "Condition d'utilisations",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //subtitle: Text("À 5 min de vous"),
              //trailing: Icon(Icons.copyright),
            ),
            ListTile(
              title: Text(
                "À propos",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Mission & objectif"),
              //trailing: Icon(Icons.text_decrease),
            ),
          ],
        ),
      ),
    );
  }
}
