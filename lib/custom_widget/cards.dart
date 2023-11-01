import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cards_widget extends StatefulWidget {
  String? phoneNumber;
  String? address;
  String? stationName;
  String? stationTitle;

  cards_widget({super.key,
    required this.address,
     required this.phoneNumber,
     required this.stationName,
     required this.stationTitle,

});

  @override
  State<cards_widget> createState() => _cards_widgetState();
}

class _cards_widgetState extends State<cards_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration:const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        height: 70,
        width: 400,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("${widget.stationTitle}",
                style:const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "Gilroy")),
            const Icon(Icons.local_fire_department, size: 30),
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
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("\n\t ${widget.stationName}",
                style:const TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.bold)),
            RichText(
              text:  TextSpan(
                children: <TextSpan>[
                 const TextSpan(
                      text: "\t Phone :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy")),
                  TextSpan(
                      text: widget.phoneNumber,
                      style: const TextStyle(
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            RichText(
              text:  TextSpan(
                children: <TextSpan>[
                 const TextSpan(
                      text: "\t Address :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy")),
                  TextSpan(
                      text:widget.address,

                      style:const TextStyle(
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

/*
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
 */