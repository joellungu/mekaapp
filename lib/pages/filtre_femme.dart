import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mekaapp/pages/app_controller.dart';

class FiltreFemme extends StatelessWidget {
  //
  AppController appController = Get.find();
  //
  List cats = [
    {"type": "IST Bukko", "icon": "beauty-icon", "genre": "f"},
    {"type": "IST Bukko", "icon": "chf9", "genre": "f"},
    {"type": "IST Bukko", "icon": "chf7", "genre": "f"},
    {"type": "IST Bukko", "icon": "hairdryer-icon", "genre": "f"},
    {"type": "IST Bukko", "icon": "grooming-nail-icon", "genre": "f"},
    {"type": "IST Bukko", "icon": "leg-footprint-icon", "genre": "f"},
    {"type": "IST Atuza", "icon": "chf2", "genre": "f"},
    {"type": "IST Bukko", "icon": "chf8", "genre": "f"},
    {"type": "IST Bukko", "icon": "chf12", "genre": "f"},
    //{"type": "IST Bukko", "icon": "grooming-nail-icon"},
    //{"type": "IST Bukko", "icon": "grooming-nail-icon"},
    //hairdryer-icon
    {"type": "IST Alto", "icon": "chf1", "genre": "f"},
    {"type": "IST Kima", "icon": "chf4", "genre": "f"},
  ];
  //
  @override
  Widget build(BuildContext context) {
    //
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(20),
      children: List.generate(
        cats.length,
        (index) {
          Map e = cats[index];
          RxBool select = false.obs;
          //
          return Obx(
            () => InkWell(
              onTap: () {
                //
                select.value = !select.value;
                if (select.value) {
                  appController.filtre.add(e);
                } else {
                  appController.filtre.remove(e);
                }
                //
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: select.value
                      ? const [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 2.5,
                            spreadRadius: 2,
                          ),
                        ]
                      : [],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 10,
                        ),
                        child: Container(
                          //padding: const EdgeInsets.all(5),
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            color: select.value
                                ? Colors.blue
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: SvgPicture.asset(
                              "assets/${e["icon"]}.svg",
                              color: Colors.black,
                              //colorFilter: ColorFilter.mode(
                              //  Colors.white, BlendMode.darken),
                              semanticsLabel: "",
                              height: 100,
                              width: 100,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "${e['type']}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              //color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
