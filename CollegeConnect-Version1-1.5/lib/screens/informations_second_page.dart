import 'package:collegeconnect/screens/informations_third_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationsSecondPage extends StatefulWidget {
  @override
  _InformationsSecondPageState createState() => _InformationsSecondPageState();
}

class _InformationsSecondPageState extends State<InformationsSecondPage> {
  final _userNameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: BackButton(
            color: Colors.black87,
          )),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48.0),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'Images/Sec.png',
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            Text(
              "Enter Your Personal Information 2-2",
              style: GoogleFonts.quicksand(
                  fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                labelStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12.0,
                ),
                hintText: 'Ex. MohAlboqami',
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your user name';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: _firstNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
                labelStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12.0,
                ),
                hintText: 'Ex. Mohammed',
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your first name';
                }
                if (RegExp(r'\d').hasMatch(value)) {
                  return 'Name should not contain any numbers';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
                labelStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12.0,
                ),
                hintText: 'Ex. Albaqami',
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your last name';
                }
                if (RegExp(r'\d').hasMatch(value)) {
                  return 'Name should not contain any numbers';
                }
                return null;
              },
            ),
            Container(
              alignment: FractionalOffset.center,
              margin: EdgeInsets.only(top: 62.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        InformationsThirdPage(
                          userName: _userNameController.text,
                          firstName: _firstNameController.text,
                          lastName: _lastNameController.text,
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 42.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF9DDAC),
                      ),
                      padding: const EdgeInsets.all(8),
                      // Change button text when light changes state.
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 42.0,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0x29199D8C),
                      ),
                      padding: const EdgeInsets.all(8),
                      // Change button text when light changes state.
                      child: const Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
