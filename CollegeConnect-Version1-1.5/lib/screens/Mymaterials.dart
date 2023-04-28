import 'package:collegeconnect/screens/educational_resources_page.dart';
import 'package:collegeconnect/screens/MyPosts.dart';
import 'package:collegeconnect/screens/Preference.dart';
import 'package:collegeconnect/screens/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMaterials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black87,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(
                      PreferencePage(),
                    );
                  },
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    padding: EdgeInsets.all(
                      18.0,
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
                        Text(
                          'Preferences',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Icon(
                          Icons.room_preferences_rounded,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      ToDoPage(),
                    );
                  },
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    padding: EdgeInsets.all(
                      18.0,
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
                        Text(
                          'To Do',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Icon(
                          Icons.checklist_rtl_rounded,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 36.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(
                      Myposts(),
                    );
                  },
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    padding: EdgeInsets.all(
                      18.0,
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
                        Text(
                          'My Posts',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Educational_Resources());
                  },
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    padding: EdgeInsets.all(
                      18.0,
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
                        Text(
                          'Educational Resources',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Icon(
                          Icons.cast_for_education,
                          color: Colors.black87,
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
    );
  }
}
