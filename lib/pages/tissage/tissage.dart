import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mekaapp/couleurs/couleur.dart';

class Tissage extends StatelessWidget {
  //
  RxInt c = 0.obs;

  //
  List cars = [
    {"type": "IST Alto", "icon": "chf1"},
    {"type": "IST Atuza", "icon": "chf2"},
    //{"type": "IST Bukko", "icon": "chf3"},
    {"type": "IST Kima", "icon": "chf4"},
    {"type": "IST Bukko", "icon": "chf5"},
    {"type": "IST Kima", "icon": "chf6"},
    {"type": "IST Bukko", "icon": "chf7"},
    {"type": "IST Kima", "icon": "chf8"},
    {"type": "IST Kima", "icon": "chf9"},
    {"type": "IST Bukko", "icon": "chf10"},
    //{"type": "IST Kima", "icon": "chf11"},
    {"type": "IST Kima", "icon": "chf12"},
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
            "Tissage",
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
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios),
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
                  Icons.shopping_basket,
                  size: 45,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.teal,
            labelColor: Colors.white,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.all(0),
                //icon: Icon(Icons.location_on),
                child: Text(
                  " Sangita ",
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
                  " Kabelo ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                //text: "Commande",
              ),
            ],
          ),
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
                    child: ListView(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      ),
    );
  }
}


/**
 *
 */