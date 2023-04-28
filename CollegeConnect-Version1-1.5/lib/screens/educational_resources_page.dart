import 'package:collegeconnect/widgets/Buttons/DeleteUpdateButtons.dart';
import 'package:collegeconnect/widgets/Buttons/dialogSubmitButton.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

/*
 List<Widget> Iconss = <Widget>[
  Icon(FontAwesomeIcons.youtube),
  Icon(FontAwesomeIcons.soundcloud),
].obs;*/
List<String> Levels = [
  'Level 3',
  'Level 4',
  'Level 5',
  'Level 6',
  'Level 7',
  'Level 8',
  'Level 9',
  'Level 10',
  'Level 11',
  'Level 12',
  'Level 13',
  'Level 14',
  'Level 15'
];
List<String> courses = ['Intro to C++', 'Discrete Math', 'Programming in java'];
String? LevelselectedValue;
String? courseSelectedValue;

class Educational_Resources extends StatefulWidget {
  const Educational_Resources({Key? key}) : super(key: key);

  @override
  State<Educational_Resources> createState() => _Educational_ResourcesState();
}

class _Educational_ResourcesState extends State<Educational_Resources> {
  //List<bool> selectedResourceType = <bool>[false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Get.defaultDialog(
            title: "Add Educational Resource Information",
            titleStyle: TextStyle(
              fontSize: 14.0,
            ),
            titlePadding: EdgeInsets.all(25),
            content: Flexible(
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CollegeConnectTextFormField(
                        label: 'Title',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnectTextFormField(
                        label: 'Description',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnectTextFormField(
                        label: 'Youtube',
                        formIcon: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnectTextFormField(
                        label: 'SoundCloud Link',
                        formIcon: Icon(
                          FontAwesomeIcons.soundcloud,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CollegeConnectTextFormField(
                        label: 'Spotify Link',
                        formIcon: Icon(
                          FontAwesomeIcons.spotify,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      dialogSubmitButton(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 16.0,
            ),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 36.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomDropdownButton2(
                    buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        border: Border.all(width: 1.0, color: Colors.black87)),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        4.0,
                      ),
                    ),
                    hint: "Select Level",
                    value: LevelselectedValue,
                    dropdownItems: Levels,
                    onChanged: (value) {
                      setState(() {
                        LevelselectedValue = value;
                      });
                    }),
                CustomDropdownButton2(
                    buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        border: Border.all(width: 1.0, color: Colors.black87)),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        4.0,
                      ),
                    ),
                    hint: "Select Course",
                    value: courseSelectedValue,
                    dropdownItems: courses,
                    onChanged: (value) {
                      setState(() {
                        courseSelectedValue = value;
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            //below code need to be added preferable to a listview
            Container(
              height: 56.0,
              padding: EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(
                  .1,
                ),
                borderRadius: BorderRadius.circular(
                  6.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.youtube,
                          color: Colors.black87,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Intro to programming",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Delete_UpdateButtons(
                    edit_onTap: () {
                      Get.defaultDialog(
                        title: "Edit Resource Information",
                        titleStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black87,
                        ),
                        titlePadding: EdgeInsets.only(
                          top: 24.0,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 24.0,
                        ),
                        content: Column(
                          children: [
                            Column(
                              children: [
                                CollegeConnectTextFormField(
                                  label: 'Title',
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CollegeConnectTextFormField(
                                  label: 'Link',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            dialogSubmitButton(
                              onPressed: () {},
                            ),
                          ],
                        ),
                      );
                    },
                    delete_onTap: () {
                      Get.defaultDialog(
                        title:
                            "are you sure about deleting\nthis Resource?", //resouce name should come from data base.
                        titleStyle: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black87,
                        ),
                        titlePadding: EdgeInsets.only(
                          top: 24.0,
                        ),

                        onCancel: () {
                          //cancel the process?
                        },
                        onConfirm: () {
                          //when it comes do deleting widgets, we will use this block of area for conforming the deletion process
                        },
                        cancelTextColor: Colors.red,
                        confirmTextColor: Colors.black,
                        buttonColor: Colors.white,
                        middleText: 'Intro into C++',
                        middleTextStyle: TextStyle(fontSize: 18),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 24.0,
                        ),
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
