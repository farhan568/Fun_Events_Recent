import 'package:flutter/material.dart';
import 'package:fun_events/user_list_page.dart';
import 'package:fun_events/user_maintainance_page.dart';

import 'extras/colors.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 100,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => UserMaintenance()));

                          },
                          child: Card(
                              color: CColors.userMaintainanceRow1,
                              child: Center(child: Text("User Maintaince",textAlign: TextAlign.center,style: TextStyle( fontSize: 11,fontFamily: 'Quciksand_Bold',color: CColors.userMaintainanceText ),)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 100,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                              return UserList();
                            }));
                          },
                          child: Card(
                              color: CColors.userMaintainanceRow1,
                              child: Center(child: Text("User List",textAlign: TextAlign.center,style: TextStyle( fontSize: 11,fontFamily: 'Quciksand_Bold',color: CColors.userMaintainanceText ),)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 100,
                        child: Card(
                            color: CColors.userMaintainanceRow2,
                            child: Center(child: Text("Vendor Maintaince",textAlign: TextAlign.center,style: TextStyle( fontSize: 11,fontFamily: 'Quciksand_Bold',color: Colors.white ),)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 100,
                        child: Card(
                            color: CColors.userMaintainanceRow2,
                            child: Center(child: Text("Vendor List",textAlign: TextAlign.center,style: TextStyle( fontSize: 11,fontFamily: 'Quciksand_Bold',color: Colors.white ),)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 100,
                        child: Card(
                            color: CColors.userMaintainanceRow3,
                            child: Center(child: Text("Categories",textAlign: TextAlign.center,style:TextStyle( fontSize: 11,fontFamily: 'Quciksand_Bold',color: CColors.userMaintainanceText ) ,)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 100,
                        child: Card(
                            color: CColors.userMaintainanceRow3,
                            child: Center(child: Text("Subcategories",textAlign: TextAlign.center,style: TextStyle( fontSize: 11,fontFamily: 'Quciksand_Bold',color: CColors.userMaintainanceText ),)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 100,
                        child: Card(
                            color: CColors.userMaintainanceRow4,
                            child: Center(child: Text("User Messages",textAlign: TextAlign.center,style: TextStyle( fontSize: 11,fontFamily: 'Quciksand_Bold',color: CColors.userMaintainanceText ),)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                            color: CColors.userMaintainanceRow4,
                            child: Center(child: Text("App Contents",textAlign: TextAlign.center,style: TextStyle( fontSize: 11,fontFamily: 'Quciksand_Bold',color: CColors.userMaintainanceText ),)),
                        ),
                      ),
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
