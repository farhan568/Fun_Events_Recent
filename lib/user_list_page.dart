import 'package:flutter/material.dart';
import 'package:fun_events/extras/colors.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Table(
                  border: TableBorder.all(
                      color: Colors.black, style: BorderStyle.solid, width: 2),
                  children: [
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
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white)))
                          ]),
                          Column(children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(5),
                                child: Text('First Name',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white)))
                          ]),
                          Column(children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(5),
                                child: Text('Last Name',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white)))
                          ]),
                          Column(children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(5),
                                child: Text('Enabled',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white))),
                          ]),
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                         // color: CColors.userListRow1,
                        ),
                        children: [
                          Column(children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 20, right: 20, bottom: 20, left: 5),
                                child: Text('RoseSmith@gmail.com',
                                    style: TextStyle(
                                        fontSize: 12.0,fontFamily: 'Jua', color: CColors.userListText)))
                          ]),
                          Column(children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 20, right: 20, bottom: 20, left: 5),
                                child: Text('Test2Smith@gmail.com',
                                    style: TextStyle(
                                        fontSize: 11.0, color: CColors.userListText)))
                          ]),
                          Column(children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 20, right: 20, bottom: 20, left: 5),
                                child: Text('RoseSmith@gmail.com',
                                    style: TextStyle(
                                        fontSize: 12.0,fontFamily: 'Jua', color: CColors.userListText)))
                          ]),
                          Column(children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 20, right: 20, bottom: 20, left: 5),
                                child: Text('Test3Smith@gmail.com',
                                    style: TextStyle(
                                        fontSize: 11.0,fontFamily: 'jua', color: CColors.userListText)))
                          ]),
                        ]),
                    TableRow(children: [
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, bottom: 20, left: 5),
                            child: Text('RoseSmith@gmail.com',
                                style: TextStyle(
                                    fontSize: 12.0,fontFamily: 'Jua', color: CColors.userListText)))
                      ]),
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, bottom: 20, left: 5),
                            child: Text('Test2Smith@gmail.com',
                                style: TextStyle(
                                    fontSize: 11.0, color: CColors.userListText)))
                      ]),
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, bottom: 20, left: 5),
                            child: Text('RoseSmith@gmail.com',
                                style: TextStyle(
                                    fontSize: 12.0,fontFamily: 'Jua', color: CColors.userListText)))
                      ]),
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, bottom: 20, left: 5),
                            child: Text('Test3Smith@gmail.com',
                                style: TextStyle(
                                    fontSize: 11.0,fontFamily: 'jua', color: CColors.userListText)))
                      ]),
                    ]),
                    TableRow(children: [
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, bottom: 20, left: 5),
                            child: Text('RoseSmith@gmail.com',
                                style: TextStyle(
                                    fontSize: 12.0,fontFamily: 'Jua', color: CColors.userListText)))
                      ]),
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, bottom: 20, left: 5),
                            child: Text('Test2Smith@gmail.com',
                                style: TextStyle(
                                    fontSize: 11.0, color: CColors.userListText)))
                      ]),
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, bottom: 20, left: 5),
                            child: Text('RoseSmith@gmail.com',
                                style: TextStyle(
                                    fontSize: 12.0,fontFamily: 'Jua', color: CColors.userListText)))
                      ]),
                      Column(children: [
                        Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, bottom: 20, left: 5),
                            child: Text('Test3Smith@gmail.com',
                                style: TextStyle(
                                    fontSize: 11.0,fontFamily: 'jua', color: CColors.userListText)))
                      ]),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
