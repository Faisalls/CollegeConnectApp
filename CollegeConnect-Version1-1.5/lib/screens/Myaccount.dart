import 'package:collegeconnect/screens/edit_profile_page.dart';
import 'package:collegeconnect/screens/My_chats.dart';
import 'package:collegeconnect/screens/Mymaterials.dart';
import 'package:collegeconnect/screens/Notifcations.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          ),
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => landingpage(),
                ),
              );
            },
            icon: Icon(
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: 42.0,
          ),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 50.0,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Mohammed Ali",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      "@Mohammed",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        EditProfile(),
                      );
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      padding: EdgeInsets.all(
                        24.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        color: Colors.grey.withOpacity(
                          .1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle_rounded,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        MyMaterials(),
                      );
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      padding: EdgeInsets.all(
                        24.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        color: Colors.grey.withOpacity(
                          .1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.drive_file_move_sharp,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'My Materials',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        Notifications(),
                      );
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      padding: EdgeInsets.all(
                        24.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        color: Colors.grey.withOpacity(
                          .1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Notifications',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        MyChats(),
                      );
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      padding: EdgeInsets.all(
                        24.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        color: Colors.grey.withOpacity(
                          .1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat_rounded,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                        ],
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
