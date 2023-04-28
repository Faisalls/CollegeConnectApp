import 'package:collegeconnect/screens/login_page.dart';
import 'package:collegeconnect/screens/informations_first_page.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/Buttons/landingPageButtons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:sizer/sizer.dart';
class landingpage extends StatelessWidget {
  const landingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //!!
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("College".toUpperCase(),
                      style: k_Application_Title_Style),
                  Text("Connect.".toUpperCase(),
                      style:
                          k_Application_Title_Style.copyWith(fontSize: 12.0)),
                ],
              ),
            ),
            Image(
              image: AssetImage("Images/Logo.png"),
              height: 84,
              width: 84,
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              child: Column(
                children: [
                  ContainerButton(
                    ktext: "Get Started",
                    colour: Color(0xFFF9DDAC),
                    tap: () {
                      Get.to(InformationsFirstPage());
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerButton(
                    colour: Color(0x29199D8C),
                    ktext: "Already have an account?",
                    tap: () {
                      Get.to(
                        LoginPage(),
                      );
                    },
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
