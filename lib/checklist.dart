import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'bottom_menu.dart';
import 'global/color.dart';
import 'home.dart';

class checklist extends StatefulWidget {
  const checklist({Key? key}) : super(key: key);
  @override
  State<checklist> createState() => _checklistState();
}

class _checklistState extends State<checklist> {
  bool value =false;


  @override
  Widget build(BuildContext context) {

    bool? isChecked =false;
    return Scaffold(
          body:Container(
            child: Stack(
              children: <Widget>[ ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(0.0),
            children: [
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Checklist',
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: "SukhumvitSet", ),
                          ),
                          const SizedBox(height: 30),
                          Container(alignment: Alignment.topCenter,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.black),
                                color: AppColors.color_white,
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            child:Row(
                                              children: [
                                                Flexible(child:  Text(
                                                  'Personal documents',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),
                                                ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                                children: [
                                                  Container(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'ID card',
                                                              style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'House registration',
                                                              style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'Account book number',
                                                              style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'Passport',
                                                              style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'Visa',
                                                              style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            child:Row(
                                              children: [
                                                Flexible(child:  Text(
                                                  'Personal items',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),
                                                ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                                children: [
                                                  Container(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'Brush teeth',
                                                              style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'Toothpaste',
                                                              style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'Soap',
                                                              style: const TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: RichText(
                                                            text: const TextSpan(
                                                              text: 'Towel',
                                                              style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 18
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Checkbox(
                                                          value: this.value,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              this.value = value!;
                                                            });
                                                          },
                                                        ), //Checkbox
                                                      ],
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            child:Row(
                                              children: [
                                                Flexible(child:  Text(
                                                  'add etc.',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),
                                                ),
                                                ),
                                                Icon(Icons.add_circle_outline_outlined,color: Colors.black, ),
                                              ],
                                            ),
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                                hintText: "Enter etc. topic",
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Expanded(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                        MaterialStateProperty.all<Color>(Colors.black),
                                        padding: MaterialStateProperty.all(const EdgeInsets.only(top: 10,bottom: 10)),
                                        backgroundColor: MaterialStateProperty.all<Color>(
                                            const Color.fromRGBO(196, 196, 196, 1)),
                                        shape:
                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18.0),
                                              side: const BorderSide(
                                                  width: 1, color: AppColors.color_black, style: BorderStyle.solid),
                                            ))),
                                    onPressed: () {
                                    },
                                    child: const Text("Next",
                                        style: TextStyle(fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ),
                              ]) ,
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          ])),
        );
  }
}