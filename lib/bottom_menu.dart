import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_planning/global/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'checklist.dart';
import 'login.dart';
import 'global/url.dart';
import 'home.dart';

class bottom_menu extends StatefulWidget {
  var _currentIndex = 0;
  bottom_menu({Key? key, required int currentIndex}) : super(key: key);
  @override
  State<bottom_menu> createState() => _bottom_menuState(_currentIndex);

  static void  changeTab(int index) {

  }
}


class _bottom_menuState extends State<bottom_menu> {
  int final_index = 0;

  _bottom_menuState(currentIndex);
@override
  void initState() {
  super.initState();
    final_index = widget._currentIndex;
  }
  final screens = [
    home(),
    checklist(),
  ];
  _changeIndex(int index) {
    setState(() {
      final_index = index;
      print("index..." + index.toString());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.colorMain,
      appBar: AppBar(
        title: const Text("Travel Planning",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        backgroundColor: AppColors.colorMain,
        //start head
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
          Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text("") ,
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 5,right: 5),
                height: 25,
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(196, 196, 196, 1)),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                width: 1, color: AppColors.color_black, style: BorderStyle.solid),
                          ))),
                  onPressed: () async {
                    SharedPreferences prefsLogin = await SharedPreferences.getInstance();
                    prefsLogin.setString('user_id',"");
                    AppUrl.UserID ="";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const firstlogin()),
                    );
                  },
                  child: const Text("Logout",
                      style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
        ],
        //end head
          leadingWidth: final_index !=0 ? 70 :0,
          leading:final_index !=0 ? IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
            onPressed: () {
              _changeIndex(0);
            },
          ) : Container(),
      ),
      body: IndexedStack(
        index: final_index,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:AppColors.colorMain,
        selectedItemColor: Colors.black,
        currentIndex: final_index,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        iconSize: 30,
        onTap: _changeIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu),
              label: "Menu",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.backpack),
              label: "Checklist",
              backgroundColor: Colors.black)
        ],
      ),
    );
  }
}