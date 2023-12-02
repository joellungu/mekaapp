import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mekaapp/couleurs/couleur.dart';
import 'package:mekaapp/pages/coiffure_homme/Coiffure_homme.dart';
import 'package:mekaapp/pages/manucure/manucure.dart';
import 'package:mekaapp/pages/peducure/peducure.dart';
import 'package:mekaapp/pages/tissage/tissage.dart';

import 'coiffure_dame/coiffure_dame.dart';
import 'maquillage/Maquillage.dart';

class Accueil extends StatelessWidget {
  //
  RxInt c = 0.obs;

  //
  List cars = [
    {
      "marque": "IST",
      "type": "Maquillage",
      "prix": 10,
      "annee": "2020",
      "icon": "beauty-icon"
    },
    // {
    //   "marque": "IST",
    //   "type": "IST Atuza",
    //   "prix": 20,
    //   "annee": "2021",
    //   "icon": "face-massage-icon"
    // },
    {
      "marque": "IST",
      "type": "Manucure",
      "prix": 25,
      "annee": "2010",
      "icon": "grooming-nail-icon"
    },
    {
      "marque": "IST",
      "type": "Coiffure dame",
      "prix": 40,
      "annee": "1015",
      "icon": "chf7"
    },
    {
      "marque": "IST",
      "type": "Coiffure home",
      "prix": 40,
      "annee": "1015",
      "icon": "hair-salon-icon"
    },
    {
      "marque": "IST",
      "type": "Pedicure",
      "prix": 25,
      "annee": "2010",
      "icon": "leg-footprint-icon"
    },
    // {
    //   "marque": "IST",
    //   "type": "IST Kima",
    //   "prix": 40,
    //   "annee": "1015",
    //   "icon": "beard-icon"
    // },
    // {
    //   "marque": "IST",
    //   "type": "IST Bukko",
    //   "prix": 25,
    //   "annee": "2010",
    //   "icon": "hairdryer-icon"
    // },
    // {
    //   "marque": "IST",
    //   "type": "IST Kima",
    //   "prix": 40,
    //   "annee": "1015",
    //   "icon": "face-massage-icon"
    // },
    {
      "marque": "IST",
      "type": "Tissage",
      "prix": 40,
      "annee": "1015",
      "icon": "chf9"
    },
    //{"titre": "Aide", "icon": "MdiCarPickup"},
    //{"titre": "Profil", "icon": "PhMotorcycleFill"},
  ];
  //
  @override
  Widget build(BuildContext context) {
    //
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "N'zuri",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 5),
            child: IconButton(
              onPressed: () {
                //
              },
              icon: const Icon(
                Icons.menu,
                size: 45,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Couleur.arrierPlan,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  //
                },
                icon: const Icon(
                  CupertinoIcons.person,
                  size: 45,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Couleur.arrierPlan,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Container(
            //   height: 100,
            //   color: Colors.black,
            //   padding: EdgeInsets.all(10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       IconButton(
            //         onPressed: () {
            //           //
            //         },
            //         icon: Icon(
            //           Icons.bookmark,
            //           color: Colors.white,
            //         ),
            //       ),
            //       Text(
            //         "N'zuri",
            //         style: TextStyle(color: Colors.white, fontSize: 20),
            //       ),
            //       IconButton(
            //         onPressed: () {
            //           //
            //         },
            //         icon: Icon(
            //           Icons.more_horiz,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            Expanded(
              flex: 1,
              child: TabBarView(
                //physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: double.maxFinite,
                    //color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(cars.length, (index) {
                        Map e = cars[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Couleur.principaleCouleur,
                          elevation: 1,
                          child: InkWell(
                            onTap: () {
                              //
                              if (index == 0) {
                                //
                                Get.to(Maquillage());
                              }
                              if (index == 1) {
                                //
                                Get.to(Manucure());
                              }
                              if (index == 2) {
                                //
                                Get.to(CoiffureDame());
                              }
                              if (index == 3) {
                                //
                                Get.to(CoiffureHomme());
                              }
                              if (index == 4) {
                                //
                                Get.to(Peducure());
                              }
                              if (index == 5) {
                                //
                                Get.to(Tissage());
                              }
                            },
                            child: Container(
                              height: Get.size.height / 10,
                              decoration: BoxDecoration(
                                color: Couleur.principaleCouleur,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: SvgPicture.asset(
                                      "assets/${e["icon"]}.svg",
                                      color: Colors.white,
                                      //colorFilter: ColorFilter.mode(
                                      //  Colors.white, BlendMode.darken),
                                      semanticsLabel: "",
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${e['type']}",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      //color: Colors.black,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Icon(Icons.arrow_forward_ios),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 45, //rgb(77,77,77)
          color: Couleur.principaleCouleur,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          //height: 55,
          //width: Get.size.width / 1.3,
          child: const TabBar(
            indicatorColor: Colors.teal,
            labelColor: Colors.white,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.all(0),
                //icon: Icon(Icons.location_on),
                child: Text(
                  " Services ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                //text: "Services",
              ),
              Tab(
                iconMargin: EdgeInsets.all(0),
                //icon: Icon(Icons.airplanemode_on),
                child: Text(
                  " Commande ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                //text: "Commande",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/**
 *
 */