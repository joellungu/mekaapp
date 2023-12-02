import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  Map agent;
  Catalogue(this.agent);
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: Container(
            height: 40,
            width: 40,
            child: Image.asset(
              "${agent['profil']}",
              fit: BoxFit.contain,
              height: double.maxFinite,
              width: double.maxFinite,
            ),
          ),
          title: const Text(
            "Alice Masani",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Text("Macquilleuse"),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              //
            },
            icon: const Icon(Icons.grid_4x4),
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 5,
        children: List.generate(100, (index) {
          //
          return Container(
            margin: EdgeInsets.all(1),
            color: Colors.blue,
          );
        }),
      ),
    );
  }
}
