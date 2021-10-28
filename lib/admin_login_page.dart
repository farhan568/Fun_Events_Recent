import 'package:flutter/material.dart';
import 'package:fun_events/admin_dashboard_page.dart';

import 'extras/colors.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  late double screenWidth;

  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: screenHeight*0.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Feventlogo.png',
                width: screenWidth * 0.75, height: screenHeight * 0.2),
          ],
        ),
        SizedBox(height: screenHeight * 0.12,),
        Container(
          margin: EdgeInsets.only(bottom: 20,left: screenWidth*0.03, right: screenWidth*0.03),
          padding: EdgeInsets.only(left: 23),
          decoration: BoxDecoration(
            border: Border.all(
              color: CColors.adminLoginPageTextFields,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(
                  fontSize: 11.4,
                  color: CColors.adminLoginPageText,
                  fontFamily: 'QuickSand_Bold'),
              hintText: 'Email Address',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: screenWidth*0.03, right: screenWidth*0.03 ),
          padding:
          EdgeInsets.only(left: 23),
          decoration: BoxDecoration(
            border: Border.all(
              color: CColors.adminLoginPageTextFields,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(
                  fontSize: 11.4,
                  color: CColors.adminLoginPageText,
                  fontFamily: 'QuickSand_Bold'),
              hintText: 'Password',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: 0.05 * screenWidth, left: 0.05 * screenWidth, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Remember me',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Quicksand_Bold',
                  color: CColors.adminLoginPageText,
                ),
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Quicksand_Bold',
                  color: CColors.adminLoginPageText,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.05,
        ),
        ElevatedButton(
        child: Text(
        'Login',
        style: TextStyle(fontSize: 17.1, fontFamily: 'Jua'),
    ),
    style: ElevatedButton.styleFrom(
    primary: CColors.adminLoginButton,
    padding: EdgeInsets.symmetric(
    horizontal: screenWidth * 0.19, vertical: 15),
    shape: StadiumBorder(),
    ),
    onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return AdminDashboard();
        }));
    },
    ),
    SizedBox(
    height: screenHeight*0.02,
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'Or sign in with',
    style: TextStyle(
    fontFamily: 'Quicksand_Bold',
    fontSize: 13.3,
    color: CColors.adminLoginPageText,
    ),
    ),
    SizedBox(height: screenHeight*0.02),
    Container(
    margin: EdgeInsets.only(bottom: screenHeight*0.04),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: CColors.adminLoginPageTextFields,
    border: Border.all(width: 2, color: CColors.adminLoginPageTextFields),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset(
    'assets/images/google.png',
    width: screenWidth * 0.1,
    height: 20,
    ),
    ],
    ),
    ),
    ],
    ),
      ),
    );
    }
  }
