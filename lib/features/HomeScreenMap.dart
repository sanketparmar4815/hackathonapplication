import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathonapplication/Admin_pannal/Service_page.dart';
import 'package:hackathonapplication/utils/Palette.dart';

import '../custom_widget/navigationBar.dart';

class Homescreenmap extends StatefulWidget {


  @override
  State<Homescreenmap> createState() => _HomescreenmapState();
}

class _HomescreenmapState extends State<Homescreenmap> {


  double north = 21.2266;
  double east = 72.8312;

  late GoogleMapController mapController;

  final LatLng _center =  LatLng(21.2266, 72.8312);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Palette.appbar,
            actions: [
              // IconButton(
              //   onPressed: () {
              //     print("Tap on pin icon ");
              //
              //     Navigator.push(context, MaterialPageRoute(
              //       builder: (context) {
              //         return CameraFeature();
              //       },
              //     ));
              //   },
              //   icon: const Icon(Icons.pin_drop),
              // ),
              // IconButton(
              //   onPressed: () {
              //     print("Tap on pin icon ");
              //
              //     Navigator.push(context, MaterialPageRoute(
              //       builder: (context) {
              //         return MapClickEvent();
              //       },
              //     ));
              //   },
              //   icon: const Icon(Icons.map),
              // ),
            ],
          ),
          drawer: SizedBox(
            width: screenWidth,
            child: Drawer(
              child: ListView(
                children: [
                  AppBar(
                      title: const Center(
                        child: Text(
                          "Settings",
                        ),
                      ),
                      actions: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              size: 25,
                            ))
                      ],
                      backgroundColor: Palette.appbar),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Palette.appbar,
                      maxRadius: 30,
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: Palette.commoncolor,
                      ),
                    ),
                    title: const Text('Notification',
                        style: TextStyle(
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Palette.appbar,
                      maxRadius: 30,
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: Palette.commoncolor,
                      ),
                    ),
                    title: const Text('Account & Subscription',
                        style: TextStyle(
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    onTap: () {
                      // Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return navigationBar();
                        },
                      ));
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Palette.appbar,
                      maxRadius: 30,
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: Palette.commoncolor,
                      ),
                    ),
                    title: const Text('Admin pannal',
                        style: TextStyle(
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Service_Page();
                          // return AddService();
                        },
                      ));
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      height: 70,
                      width: 350,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            width: 260,
                            child: const Text("Puna Gam Fire Station",
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: "Gilroy")),
                          ),
                          const Icon(Icons.local_fire_department,
                              size: 40, color: Colors.white),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      height: 130,
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: const Text("\nPuna gam Fire Station",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontFamily: "Gilroy",
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: RichText(
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Phone :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Gilroy")),
                                  TextSpan(
                                      text: "111-222-3333",
                                      style: TextStyle(
                                          fontFamily: "Gilroy",
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: RichText(
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Address :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Gilroy")),
                                  TextSpan(
                                      text:
                                          "6V4Q+R29, Unnamed Road,Vrundavan Society,Yoginagar Society, Surat, Gujarat 395010",
                                      style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ),
          body: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          )),
    );
  }
/*
 map my india
  void Mapsdks() {
    MapmyIndiaAccountManager.setMapSDKKey("d7730b6b7b796309ca737b1c923a94f3");
    MapmyIndiaAccountManager.setRestAPIKey("d7730b6b7b796309ca737b1c923a94f3");
    MapmyIndiaAccountManager.setAtlasClientId(
        "33OkryzDZsI0S8dSCcIGqhah7M5A_qUwRHgOzGH5eWuSwl5mcjC4ZkrlH6KPGkTQxdvnRk-FAuQ7-oN_-RQoi7H2uAUF3QcU");
    MapmyIndiaAccountManager.setAtlasClientSecret(
        "lrFxI-iSEg_LDdtssl6TK4amuZWxmAKfrEDbAz7iKHLOUIE_Wh51TT6x7_xVOjJ5pmPR3cFJgm5fLiJIn8YsYdcvqFrJMzuUw3ghG8kqcbg=");
  }

 */
}
