import 'package:collegeconnect/screens/home_major_group_level.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAboutMajor extends StatefulWidget {
  @override
  _HomeAboutMajorState createState() => _HomeAboutMajorState();
}

class _HomeAboutMajorState extends State<HomeAboutMajor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('About AI'),
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
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 18.0,
                        ),
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
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Group Levels",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(
                                      HomeMajorGroupLevel(),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.0,
                                      vertical: 6.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0x29F9DDAC),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          8.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: const [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Group Level-7",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(HomeMajorGroupLevel());
                                  },
                                  //alignment: Alignment.center,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.0,
                                      vertical: 6.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0x29F9DDAC),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          8.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: const [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Group Level-7",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(HomeMajorGroupLevel());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.0,
                                      vertical: 6.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0x29F9DDAC),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          8.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: const [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Group Level-7",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(HomeMajorGroupLevel());
                                  },
                                  //alignment: Alignment.center,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.0,
                                      vertical: 6.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0x29F9DDAC),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          8.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: const [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Group Level-7",
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
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
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
