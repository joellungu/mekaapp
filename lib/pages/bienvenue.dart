import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mekaapp/couleurs/couleur.dart';
import 'package:mekaapp/pages/app_controller.dart';
import 'package:mekaapp/pages/coiffure_homme/Coiffure_homme.dart';
import 'package:mekaapp/pages/details.dart';
import 'package:mekaapp/pages/filtre_femme.dart';
import 'package:mekaapp/pages/manucure/manucure.dart';
import 'package:mekaapp/pages/peducure/peducure.dart';
import 'package:mekaapp/pages/tissage/tissage.dart';

import 'coiffure_dame/coiffure_dame.dart';
import 'filtre_homme.dart';
import 'maquillage/Maquillage.dart';
import 'profile.dart';

class Bienvenue extends GetView<AppController> {
  //
  RxInt c = 0.obs;

  //
  //
  @override
  Widget build(BuildContext context) {
    //
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Meka°App",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          leading: Container(
            alignment: Alignment.center,
            height: 50,
            width: 50,
            child: InkWell(
              onTap: () {
                //
                Get.to(Profile());
                //
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 2.5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Icon(
                  CupertinoIcons.person,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  //
                  showModalBottomSheet(
                    isScrollControlled: true,
                    useSafeArea: true,
                    context: context,
                    builder: (c) {
                      return DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 70,
                              child: TabBar(
                                indicatorColor: Colors.blue,
                                labelColor: Colors.black,
                                isScrollable: true,
                                tabs: [
                                  Tab(
                                    iconMargin: EdgeInsets.all(0),
                                    //icon: Icon(Icons.location_on),
                                    child: Text(
                                      " Femme ",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    //text: "Services",
                                  ),
                                  Tab(
                                    iconMargin: EdgeInsets.all(0),
                                    //icon: Icon(Icons.location_on),
                                    child: Text(
                                      " Homme ",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    //text: "Services",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TabBarView(
                                //physics: BouncingScrollPhysics(),
                                children: [
                                  FiltreFemme(),
                                  FiltreHomme(),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                //
                                Get.back();
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blue.shade100),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Filtrer",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(
                  CupertinoIcons.square_fill_line_vertical_square,
                  size: 45,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        //backgroundColor: Couleur.arrierPlan,
        body: Column(
          children: [
            Container(
              height: 45,
              padding: const EdgeInsets.only(left: 10),
              color: Colors.grey.shade100.withOpacity(0.7),
              child: Obx(
                () => ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(5),
                  children: List.generate(
                    controller.filtre.length,
                    (index) {
                      //
                      Map e = controller.filtre[index];
                      //
                      return Container(
                        height: 20,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                color: e['genre'] == "m"
                                    ? Colors.blue
                                    : Colors.pink,
                                borderRadius: BorderRadius.circular(2.5),
                              ),
                            ),
                            Text(
                              " ${e['type']} ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                //
                                controller.filtre.removeAt(index);
                              },
                              icon: const Icon(
                                Icons.close_rounded,
                                color: Colors.black,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView(
                padding: const EdgeInsets.all(15),
                children: List.generate(6, (index) {
                  //
                  return InkWell(
                    onTap: () {
                      //
                      Get.to(Details({
                        "profil": "assets/maq${index + 4}-removebg-preview.png"
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: Get.size.height / 5,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 1,
                              child: SizedBox(
                                height: Get.size.height / 7,
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: const Text(
                                                  "Alice Masani",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                //color: Colors.amber,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "Macquilleuse Professionnelle",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                //color: Colors.cyan,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      size: 15,
                                                    ),
                                                  ],
                                                ),
                                                //color: Colors.teal,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "À 5 min de vous",
                                                  style: TextStyle(
                                                    color: Colors.teal.shade900,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                //color: Colors.teal,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Prix : ",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                    Text(
                                                      " 30000 Fc ",
                                                      style: TextStyle(
                                                        color:
                                                            Colors.red.shade900,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                //color: Colors.teal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 15, left: 5),
                            padding: const EdgeInsets.all(3),
                            height: Get.size.height / 4,
                            width: Get.size.width / 4.5,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.blue.shade100.withOpacity(0.1),
                                  Colors.blue.shade100.withOpacity(0.1),
                                  Colors.blue.shade100.withOpacity(0.3),
                                  Colors.blue.shade100.withOpacity(0.4),
                                  Colors.blue.shade100.withOpacity(0.5),
                                  Colors.blue.shade100,
                                  Colors.blue.shade200,
                                  Colors.blue.shade300,
                                  Colors.blue.shade700,
                                ],
                                //tileMode: TileMode.decal,
                                //stops: [0.1, 0.2, 0.3],
                              ),
                            ),
                            child: Hero(
                              tag:
                                  "assets/maq${index + 4}-removebg-preview.png",
                              child: Image.asset(
                                "assets/maq${index + 4}-removebg-preview.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/**
 *
 */