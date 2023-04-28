import 'package:collegeconnect/screens/chat_page.dart';
import 'package:collegeconnect/screens/course_materials_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMajorGroupLevel extends StatefulWidget {
  @override
  _HomeMajorGroupLevelState createState() => _HomeMajorGroupLevelState();
}

class _HomeMajorGroupLevelState extends State<HomeMajorGroupLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu_rounded,
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                ChatPage(),
                              );
                            },
                            child: Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Color(
                                  0x29F9DDAC,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.mark_unread_chat_alt_sharp,
                                    size: 36.0,
                                  ),
                                  Text(
                                    "Group Chat",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 48.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(CoursesMaterialsPage());
                            },
                            //alignment: Alignment.center,
                            child: Container(
                              width: 140,
                              height: 140,
                              decoration: BoxDecoration(
                                color: const Color(
                                  0x29F9DDAC,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.menu_book,
                                    size: 36.0,
                                    color: Colors.black87,
                                  ),
                                  Text(
                                    "Course Materials",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
}
