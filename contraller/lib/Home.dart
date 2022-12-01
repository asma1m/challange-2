import 'dart:ui';

import 'package:contraller/ScandPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add"),
          actions: [Icon(Icons.ac_unit_outlined)],
        ),
        body: Center(
          child: Column(
//mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 170,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage(
                          "images/lovepik-lovely-girl-png-image_401066825_wh860.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                child: Text("asma"),
              ),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 100),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Text(
                        "UX Design",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "28 Students",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 142, 124, 124)),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 1, blurRadius: 10)
                  ],
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
                height: 40,
                width: 200,
                child: InkWell(
                  child: Text("go"),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            height: 200,
                            width: 200,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.room,
                                    color: Colors.green,
                                    size: 50,
                                  ),
                                  Text("Success")
                                ]),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                // margin: EdgeInsets.all(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 1, blurRadius: 10)
                  ],
                ),
                alignment: Alignment.center,
                height: 40,
                width: 200,
                child: InkWell(
                  child: Text("go"),
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: ((context) => Container(
                              height: MediaQuery.of(context).size.height / 1.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("asma"),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            (Text("xxx")),
                                            Switch(
                                                value: light,
                                                onChanged: ((value) {
                                                  setState(() {
                                                    light = value;
                                                  });
                                                })),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            (Text("xxx")),
                                            Switch(
                                                value: light,
                                                onChanged: ((value) {
                                                  setState(() {
                                                    light = value;
                                                  });
                                                })),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            (Text("xxx")),
                                            Switch(
                                                value: light,
                                                onChanged: ((value) {
                                                  setState(() {
                                                    light = value;
                                                  });
                                                })),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            (Text("xxx")),
                                            Switch(
                                                value: light,
                                                onChanged: ((value) {
                                                  setState(() {
                                                    light = value;
                                                  });
                                                })),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            (Text("xxx")),
                                            Switch(
                                                value: light,
                                                onChanged: ((value) {
                                                  setState(() {
                                                    light = value;
                                                  });
                                                })),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                            )));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
