import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackathonapplication/Admin_pannal/Service_page.dart';
import 'package:hackathonapplication/custom_widget/cart2.dart';
import 'package:hackathonapplication/custom_widget/round_button.dart';
import 'package:hackathonapplication/demo/loginpage.dart';
import 'package:hackathonapplication/features/Cart_services.dart';
import 'package:hackathonapplication/utils/Palette.dart';
import 'package:page_transition/page_transition.dart';

import '../custom_widget/navigationBar.dart';

class Homescreenmap extends StatefulWidget {
  @override
  State<Homescreenmap> createState() => _HomescreenmapState();
}

class _HomescreenmapState extends State<Homescreenmap> {
  Completer<GoogleMapController> controller = Completer();
  double north = 21.2266;
  double east = 72.8312;

  final LatLng _center = LatLng(21.2266, 72.8312);

  late GoogleMapController mapController;

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
                    title: const Text('login',
                        style: TextStyle(
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                          // return AddService();
                        },
                      ));
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Column(children: [
                  //   Container(
                  //     decoration: const BoxDecoration(
                  //         color: Colors.red,
                  //         borderRadius: BorderRadius.only(
                  //             topLeft: Radius.circular(20),
                  //             topRight: Radius.circular(20))),
                  //     height: 70,
                  //     width: 350,
                  //     child: Row(
                  //       // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //       children: [
                  //         Container(
                  //           margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  //           width: 260,
                  //           child: const Text("Puna Gam Fire Station",
                  //               maxLines: 2,
                  //               style: TextStyle(
                  //                   fontSize: 14,
                  //                   color: Colors.white,
                  //                   fontFamily: "Gilroy")),
                  //         ),
                  //         const Icon(Icons.local_fire_department,
                  //             size: 40, color: Colors.white),
                  //       ],
                  //     ),
                  //   ),
                  //   Container(
                  //     decoration: const BoxDecoration(
                  //         color: Colors.lightBlueAccent,
                  //         borderRadius: BorderRadius.only(
                  //             bottomLeft: Radius.circular(20),
                  //             bottomRight: Radius.circular(20))),
                  //     height: 130,
                  //     width: 350,
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Container(
                  //           margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  //           child: const Text("\nPuna gam Fire Station",
                  //               style: TextStyle(
                  //                   color: Colors.red,
                  //                   fontSize: 15,
                  //                   fontFamily: "Gilroy",
                  //                   fontWeight: FontWeight.bold)),
                  //         ),
                  //         Container(
                  //           margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  //           child: RichText(
                  //             text: const TextSpan(
                  //               children: <TextSpan>[
                  //                 TextSpan(
                  //                     text: "Phone :",
                  //                     style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                         fontFamily: "Gilroy")),
                  //                 TextSpan(
                  //                     text: "111-222-3333",
                  //                     style: TextStyle(
                  //                         fontFamily: "Gilroy",
                  //                         fontWeight: FontWeight.w500)),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         Container(
                  //           margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  //           child: RichText(
                  //             text: const TextSpan(
                  //               children: <TextSpan>[
                  //                 TextSpan(
                  //                     text: "Address :",
                  //                     style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                         fontFamily: "Gilroy")),
                  //                 TextSpan(
                  //                     text:
                  //                         "6V4Q+R29, Unnamed Road,Vrundavan Society,Yoginagar Society, Surat, Gujarat 395010",
                  //                     style: TextStyle(
                  //                       fontFamily: "Gilroy",
                  //                       fontWeight: FontWeight.w500,
                  //                     )),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ]),
                  CardWidget(
                    address:
                        ': 6V4Q+R29, Unnamed Road, Vrundavan Society, Yoginagar Society, Surat, Gujarat 395010',
                    phoneNumber: '111-222-3333',
                    stationName: 'Puna gam Fire Station',
                    stationTitle: 'Puna Gam Fire Station, Puna gam',
                    color: Palette.colorPrimary,
                    png: 'assets/fire.png',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          body: Stack(
            children: [
              GoogleMap(
                // mapType: MapType.satellite,
                onMapCreated: _onMapCreated,
                // myLocationEnabled: true,
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    SizedBox(width: screenWidth * .30),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.bottomToTop,
                                    duration:
                                        const Duration(milliseconds: 400),
                                    child:  CartServices()));

                        },
                        child: RoundButton(
                            buttonname: "SCROLL DOWN",
                            icon: Icons.arrow_drop_down),
                      ),
                    ),
                    SizedBox(width: screenWidth * .15),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.layers,
                                color: Colors.black,
                              ))),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
