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
