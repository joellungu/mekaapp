import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'catalogue.dart';

class Details extends StatelessWidget {
  Map cat;
  Details(this.cat);
  //
  @override
  Widget build(BuildContext context) {
    //
    /**DefaultTabController(
      length: 2,
      child: 
       */

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  text: "Alice Masani\n",
                  children: [
                    TextSpan(
                      text: "Macquilleuse",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("${cat['profil']}"),
                    fit: BoxFit.contain,
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(2),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.shade100.withOpacity(0.1),
                      Colors.blue.shade100.withOpacity(0.1),
                      Colors.blue.shade100.withOpacity(0.2),
                      Colors.blue.shade100.withOpacity(0.3),
                      Colors.blue.shade100.withOpacity(0.4),
                      Colors.blue.shade100.withOpacity(0.5),
                      Colors.blue.shade100.withOpacity(0.6),
                      Colors.blue.shade100.withOpacity(0.7),
                      Colors.blue.shade100,
                      Colors.blue.shade100,
                      Colors.blue.shade200,
                      //Colors.blue.shade300,
                      //Colors.blue.shade400,
                      //Colors.blue.shade500,
                      Colors.blue.shade500,
                      Colors.blue.shade700,
                    ],
                    //tileMode: TileMode.decal,
                    //stops: [0.1, 0.2, 0.3],
                  ),
                ),
                child: Hero(
                  tag: "${cat['profil']}",
                  child: Image.asset(
                    "${cat['profil']}",
                    fit: BoxFit.contain,
                    height: double.maxFinite,
                    width: double.maxFinite,
                  ),
                ),
              ),
            ),
          ),
          // SliverGrid(
          //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 200.0,
          //     mainAxisSpacing: 10.0,
          //     crossAxisSpacing: 10.0,
          //     childAspectRatio: 4.0,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.teal[100 * (index % 9)],
          //         child: Text('Grid Item $index'),
          //       );
          //     },
          //     childCount: 20,
          //   ),
          // ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        "Alice Masani",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Macquilleuse"),
                      //trailing: Icon(CupertinoIcons.person),
                    ),
                    ListTile(
                      onTap: () {
                        //
                      },
                      title: const Text(
                        "Note",
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
                      trailing: Icon(
                        Icons.favorite,
                        color: Colors.grey,
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
                      onTap: () {
                        //
                        Get.to(Catalogue(cat));
                      },
                      title: const Text(
                        "Catalogue",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text("Voir ses realisations"),
                      trailing: const Icon(Icons.photo_camera),
                    ),
                    ListTile(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (c) {
                            return Container();
                          },
                        );
                      },
                      title: Text(
                        "Distance",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("À 5 min de vous"),
                      trailing: Icon(Icons.location_on),
                    ),
                    ListTile(
                      title: Text(
                        "Prix",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "30000 Fc ",
                            style: TextStyle(
                              color: Colors.red.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "(multi services) ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.fact_check_outlined),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue.shade100),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: Text(
                        "Appeler maintenant",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          // SliverFixedExtentList(
          //   itemExtent: 50.0,
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.lightBlue[100 * (index % 9)],
          //         child: Text('List Item $index'),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    // child: Padding(
                    //   child: Hero(
                    //     tag: "${cat['profil']}",
                    //     child: Image.asset(
                    //       "${cat['profil']}",
                    //       fit: BoxFit.contain,
                    //       height: double.maxFinite,
                    //       width: double.maxFinite,
                    //     ),
                    //   ),
                    //   padding: EdgeInsets.only(bottom: 50),
                    // ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        text: "Alice Masani\n",
                        children: [
                          TextSpan(
                            text: "Macquilleuse",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage("${cat['profil']}"),
                  fit: BoxFit.contain,
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(2),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade100.withOpacity(0.1),
                    Colors.blue.shade100.withOpacity(0.1),
                    Colors.blue.shade100.withOpacity(0.2),
                    Colors.blue.shade100.withOpacity(0.3),
                    Colors.blue.shade100.withOpacity(0.4),
                    Colors.blue.shade100.withOpacity(0.5),
                    Colors.blue.shade100.withOpacity(0.6),
                    Colors.blue.shade100.withOpacity(0.7),
                    Colors.blue.shade100,
                    Colors.blue.shade200,
                    Colors.blue.shade300,
                    Colors.blue.shade400,
                    Colors.blue.shade500,
                    Colors.blue.shade500,
                    Colors.blue.shade700,
                  ],
                  //tileMode: TileMode.decal,
                  //stops: [0.1, 0.2, 0.3],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.all(10),
              height: double.maxFinite,
              width: double.maxFinite,
              color: Colors.grey.shade200,
              child: ListView(
                padding: EdgeInsets.all(10),
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
                    trailing: Icon(Icons.location_on),
                  ),
                  ListTile(
                    title: Text(
                      "Prix",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "30000 Fc ",
                          style: TextStyle(
                            color: Colors.red.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "(multi services) ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    trailing: Icon(Icons.fact_check_outlined),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue.shade100),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    child: Text(
                      "Appeler maintenant",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
