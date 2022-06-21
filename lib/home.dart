import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_planning/global/color.dart';

class home extends StatefulWidget {
  static const routeName = '/home';
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> titleList = [
    'Travel plans',
    'Visited',
    'Manage account',
    'Reccommend'
  ];

  var pdfPrivacyPolicy = 'assets/pdf/privacypolicy.pdf';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body:
        Container(
          child: Stack(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "SukhumvitSet", ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    flex: 10,
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0))),
                      child: GridView.builder(
                          itemCount: titleList.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 4.0,
                              mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {},
                              child:
                              Container(alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            color: AppColors.color_bg_grey_text,
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                                      child: ClipRRect(                                     borderRadius: BorderRadius.circular(20),
                                        child: Text(titleList[index],style: TextStyle(fontSize: 18),),
                                      )
                              )
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
