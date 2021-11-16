import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fun_events/extras/colors.dart';
import 'package:fun_events/profile_setting_model.dart';

class UserList extends StatelessWidget {
  UserList({Key? key}) : super(key: key);
  final rows = <TableRow>[];
  var list=[];
  @override
  Widget build(BuildContext context) {
    _getUserList();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: InkWell(
                    child: Table(
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2),
                      children: [
                        for ( var i in list )
                          _getRow(i),

                    ]
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getUserList() async {
    rows.add(
      TableRow(
          decoration: BoxDecoration(
            color: CColors.userListRow1,
          ),
          children: [
            Column(children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  color: CColors.userListRow1,
                  child: Text('UserEmail',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.0, color: Colors.white)))
            ]),
            Column(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: Text('First Name',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.0, color: Colors.white)))
            ]),
            Column(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: Text('Last Name',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.0, color: Colors.white)))
            ]),
            Column(children: [
              CircularProgressIndicator()
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: Text('Enabled',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.0, color: Colors.white))),
            ]),
          ]),
    );
    try {
      FirebaseFirestore.instance
          .collection("user")
          .where("type", isEqualTo: "user")
          .snapshots()
          .listen((event) {
        for (var element in event.docs) {
          UserModel model = UserModel.fromJson(element.data());
          list.add(model);
        }}
       );
    } on FirebaseException catch (e) {
      print(e.toString());
    }
  }
  TableRow _getRow(var i){

      return  TableRow(children: [
          Column(children: [
            Container(
                margin: EdgeInsets.only(
                    top: 20, right: 20, bottom: 20, left: 5),
                child: Text(i.email.toString(),
                    style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Jua',
                        color: CColors.userListText)))
          ]),
          Column(children: [
            Container(
                margin: EdgeInsets.only(
                    top: 20, right: 20, bottom: 20, left: 5),
                child: Text(i.firstName.toString(),
                    style: TextStyle(
                        fontSize: 11.0, color: CColors.userListText)))
          ]),
          Column(children: [
            Container(
                margin: EdgeInsets.only(
                    top: 20, right: 20, bottom: 20, left: 5),
                child: Text(i.userName.toString(),
                    style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Jua',
                        color: CColors.userListText)))
          ]),
          Column(children: [
            Container(
                margin: EdgeInsets.only(
                    top: 20, right: 20, bottom: 20, left: 5),
                child: Text('Enabled',
                    style: TextStyle(
                        fontSize: 11.0,
                        fontFamily: 'jua',
                        color: CColors.userListText)))
          ]),
        ]);

    }
  }

