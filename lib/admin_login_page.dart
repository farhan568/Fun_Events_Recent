import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fun_events/admin_dashboard_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'extras/colors.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  late double screenWidth;
  late double screenHeight;
  String _email = "";
  String _password = "" ;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Feventlogo.png',
                    width: screenWidth * 0.75, height: screenHeight * 0.2),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.12,
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: 20,
                  left: screenWidth * 0.03,
                  right: screenWidth * 0.03),
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
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  }),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.03, right: screenWidth * 0.03),
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
                    hintText: 'Password',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _password = value.trim();
                    });
                  }),
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
                if ( _email=="" || _password=="" )
                  {
                    Fluttertoast.showToast(
                        msg: "Password or Email is empty",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                else{
                final auth = FirebaseAuth.instance;
                auth
                    .signInWithEmailAndPassword(
                        email: _email, password: _password)
                    .then((_) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => AdminDashboard()));
                  Fluttertoast.showToast(
                      msg: "Sign In Successful",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }).catchError((onError) {
                  FirebaseAuthException e = onError;
                  if (e.code == 'user-not-found') {
                    print("Invalid Email");
                    Fluttertoast.showToast(
                        msg: "No user found for that email",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.black,
                        fontSize: 16.0);
                  } else if (e.code == 'wrong-password') {
                    Fluttertoast.showToast(
                        msg: "Invalid Password ",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  } else {
                    Fluttertoast.showToast(
                        msg: e.toString(),
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                });}
              },
            ),
            SizedBox(
              height: screenHeight * 0.02,
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
            SizedBox(height: screenHeight * 0.02),
            Container(
              margin: EdgeInsets.only(bottom: screenHeight * 0.04),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CColors.adminLoginPageTextFields,
                border: Border.all(
                    width: 2, color: CColors.adminLoginPageTextFields),
              ),
              child: InkWell(
                onTap: () {
                  _googleSignIn();
                },
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
            ),
          ],
        ),
      ),
    );
  }

  _googleSignIn() async {
    final _googleSingIn = GoogleSignIn();
    final googleAccount = await _googleSingIn.signIn();
    final googleAuth = await googleAccount!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) async {
      final auth = FirebaseAuth.instance;
      final userId = auth.currentUser!.uid;
      final snapShot = await FirebaseFirestore.instance
          .collection('Admin_User')
          .doc(userId)
          .get();
      if (!snapShot.exists) {
        Map<String, String> map;
        map = {
          'Name': auth.currentUser!.displayName.toString(),
          'Email': auth.currentUser!.email.toString()
        };
        await FirebaseFirestore.instance
            .collection('Admin_User')
            .doc(userId)
            .set(map);
        print("User Info Updated to Database"); // You can add data to Firebase Firestore here
      }
      else{
        print("User Info already exist");
      }
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => AdminDashboard()));
    }).catchError((error) {
      FirebaseAuthException e = error;
      print(e.message.toString());
    });
  }
}
