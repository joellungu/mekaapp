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
                "Cote",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade700,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade700,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade700,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade700,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade700,
                    size: 15,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Capacités",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                  "Maquillage, Coiffure homme & dame, Manicure, Pédicure, Meche, Cabelo, tissage, Barbe"),
            ),
            ListTile(
              title: Text(
                "Catalogue",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Voir ses realisations"),
              trailing: Icon(Icons.photo_camera),
            ),
            ListTile(
              title: Text(
                "Distance",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("À 5 min de vous"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
