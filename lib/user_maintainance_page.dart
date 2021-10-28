import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'extras/colors.dart';

class UserMaintenance extends StatefulWidget {
  const UserMaintenance({Key? key}) : super(key: key);

  @override
  State<UserMaintenance> createState() => _UserMaintenanceState();
}

class _UserMaintenanceState extends State<UserMaintenance> {
  int st = 0;
  String? languageT;
  String? countryT;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 20),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: CColors.userMaintainanceSearch,
                      border: Border.all(
                        color: Colors.cyan,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            fontSize: 18,
                            color: CColors.userMaintainanceText,
                            fontFamily: 'Quicksand_Bold'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 20),
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CColors.userMaintainanceFieldBorder,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Rose',
                        hintStyle: TextStyle(
                            fontSize: 12.35,
                            color: CColors.userMaintainanceText,
                            fontFamily: 'Quicksand_Bold'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 20),
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CColors.userMaintainanceFieldBorder,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Smith',
                        hintStyle: TextStyle(
                            fontSize: 11.4,
                            color: CColors.userMaintainanceText,
                            fontFamily: 'Quicksand_Bold'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 20),
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CColors.userMaintainanceFieldBorder,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Smith@gmail.com',
                        hintStyle: TextStyle(
                            fontSize: 11.4,
                            color: CColors.userMaintainanceText,
                            fontFamily: 'Quicksand_Bold'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 20),
                    padding: EdgeInsets.only(left: 15, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        border: Border.all(
                          color: CColors.userMaintainanceFieldBorder,
                          width: 2,
                        )),
                    child: DropdownButton<String>(
                        isExpanded: true,
                        underline:
                            DropdownButtonHideUnderline(child: Container()),
                        focusColor: Colors.white,
                        menuMaxHeight: 100,
                        style: TextStyle(
                            color: CColors.userMaintainanceText,
                            fontFamily: 'Quicksand_Bold'),
                        iconEnabledColor: CColors.userMaintainanceSearch,
                        iconSize: 0,
                        icon: Icon(Icons.camera),
                        items: <String>[
                          'Pakistan',
                          'USA',
                          'India',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          countryT ?? "Country",
                          style: TextStyle(
                              color: CColors.userMaintainanceText,
                              fontFamily: 'Quicksand_Bold'),
                        ),
                        onChanged: (value) {
                          setState(() {
                            countryT = value;
                          });
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 20),
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        border: Border.all(
                          color: CColors.userMaintainanceSearch,
                          width: 2,
                        )),
                    child: DropdownButton<String>(
                        isExpanded: true,
                        // icon: Icon( Icons.camera_rear ),
                        underline:
                            DropdownButtonHideUnderline(child: Container()),
                        focusColor: Colors.white,
                        menuMaxHeight: 100,
                        iconSize: 0,
                        style: TextStyle(
                            color: CColors.userMaintainanceText,
                            fontFamily: 'Quicksand_Bold'),
                        iconEnabledColor: Colors.purple,
                        items: <String>[
                          'Urdu',
                          'Turkey',
                          'Punjabi',
                          'Arabic',
                          'English',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          languageT ?? "Preferred Language",
                          style: TextStyle(
                              color: CColors.userMaintainanceText,
                              fontFamily: 'Quicksand_Bold'),
                        ),
                        onChanged: (value) {
                          setState(() {
                            languageT = value;
                          });
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: st == 0
                          ? CColors.userMaintainanceUserVendor
                          : CColors.userMaintainanceUserVendor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              st = 0;
                            });
                          },
                          child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 33,
                              decoration: BoxDecoration(
                                color:
                                    st == 0 ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Enable',
                                style: TextStyle(
                                    fontFamily: 'Jua',
                                    fontSize: 12,
                                    color: st == 0
                                        ? CColors.userMaintainanceUserText
                                        : Colors.white),
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              st = 1;
                            });
                          },
                          child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 33,
                              decoration: BoxDecoration(
                                color:
                                    st == 1 ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text('Disable',
                                  style: TextStyle(
                                      fontFamily: 'Jua',
                                      fontSize: 12,
                                      color: st == 1
                                          ? CColors.userMaintainanceUserText
                                          : Colors.white))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    child: Text(
                      'Send Message',
                      style: TextStyle(fontSize: 17.1, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: CColors.userMaintainanceSendMessageB,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => firebase_login()));
                    },
                  ),
                  ElevatedButton(
                    child: Text(
                      'Log out from all devices',
                      style: TextStyle(fontSize: 17.1, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: CColors.userMaintainanceLogOutB,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => firebase_login()));
                    },
                  ),
                  ElevatedButton(
                    child: Text(
                      'Delete User',
                      style: TextStyle(fontSize: 17.1, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: CColors.userMaintainanceDeleteUserB,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => firebase_login()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
