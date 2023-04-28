import 'package:collegeconnect/screens/home_about_major.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigateMajors extends StatelessWidget {
  const NavigateMajors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 36.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Major(
                            img: "Images/CIS.png",
                            MajorName: "CIS",
                          ),
                          Major(
                            img: "Images/AImajor.png",
                            MajorName: "AI",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Major(img: "Images/CYSmajor.png", MajorName: "CYS"),
                          Major(
                            img: "Images/CSmajor.png",
                            MajorName: "CS",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Major extends StatelessWidget {
  const Major({this.img, this.MajorName});

  final String? img;
  final String? MajorName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          HomeAboutMajor(),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        decoration: BoxDecoration(
          color: Color(0x29F9DDAC),
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("$img"),
              width: 40.0,
              height: 40.0,
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              "$MajorName",
              style: TextStyle(fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}
