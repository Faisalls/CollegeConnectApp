import 'package:flutter/material.dart';

class PreferencePage extends StatefulWidget {
  @override
  _PreferencePageState createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
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
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          margin: EdgeInsets.only(
            top: 36.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        6.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Center(
                              child: Text("CIS Level-7",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)))),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 24.0,
                      ),
                    ],
                  )),
              SizedBox(
                height: 16.0,
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        6.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Center(
                              child: Text("CIS Level-8",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)))),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 24.0,
                      ),
                    ],
                  )),
              SizedBox(
                height: 16.0,
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        6.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Center(
                              child: Text("CIS Level-9",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)))),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 24.0,
                      ),
                    ],
                  )),
              SizedBox(
                height: 16.0,
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        6.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Center(
                              child: Text("CIS Level-10",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)))),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 24.0,
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
