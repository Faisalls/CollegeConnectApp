import 'package:collegeconnect/utilities/Extension.dart';
import 'package:collegeconnect/widgets/Buttons/MainPagesSubmitButton.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black87,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 60.0,
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              CollegeConnectTextFormField(
                                label: 'Username',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CollegeConnectTextFormField(
                                label: 'First name',
                                validator: (val) {
                                  if (!val!.isValidName) {
                                    return "Please,your name should have only characters and no space.Example; Nawaf";
                                  }
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CollegeConnectTextFormField(
                                label: 'Last name',
                                validator: (val) {
                                  if (!val!.isValidName) {
                                    return "Please,your name should have only characters and no space.Example; Nawaf";
                                  }
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.defaultDialog(
                                    title: 'Select Major',
                                    content: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            OutlinedButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Text("CIS"),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            OutlinedButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Text("CS"),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            OutlinedButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Text("CYS"),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            OutlinedButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: Text("AI"),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          " Select your major",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.arrowRight,
                                          size: 18.0,
                                          color: Colors.black87,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CollegeConnectTextFormField(
                                label: 'Password',
                                formObsecureText: true,
                                validator: (val) {
                                  if (!val!.isValidPassword) {
                                    return "Minimum eight characters, at least one uppercase letter, one lowercase letter\none number and one special character";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 82.0,
                              ),
                              MainPagesSubmitButton(
                                formKey: _formKey,
                                buttonText: 'Save',
                                onTap: () {
                                  if (!_formKey.currentState!.validate()) {
                                  } else {}
                                },
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
      ),
    );
  }
}
