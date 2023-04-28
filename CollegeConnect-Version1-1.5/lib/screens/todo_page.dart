import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
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
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 48.0,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  CheckboxListTile(
                    //checkbox positioned at right
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    onChanged: (bool? value) {},
                    title: Text(
                      "to-do-item - 10AM",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.withOpacity(
                          .8,
                        ),
                      ),
                    ),
                    activeColor: Colors.green[500],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  CheckboxListTile(
                    //checkbox positioned at right
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    onChanged: (bool? value) {},
                    title: Text(
                      "to-do-item - 10AM",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.withOpacity(
                          .8,
                        ),
                      ),
                    ),
                    activeColor: Colors.green[500],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  CheckboxListTile(
                    //checkbox positioned at right
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    onChanged: (bool? value) {},
                    title: Text(
                      "to-do-item - 10AM",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.withOpacity(
                          .8,
                        ),
                      ),
                    ),
                    activeColor: Colors.green[500],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  CheckboxListTile(
                    //checkbox positioned at right
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: true,
                    onChanged: (bool? value) {},
                    title: Text(
                      "to-do-item - 10AM",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.withOpacity(
                          .8,
                        ),
                      ),
                    ),
                    activeColor: Colors.green[500],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  CheckboxListTile(
                    //checkbox positioned at right
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: true,
                    onChanged: (bool? value) {},
                    title: Text(
                      "to-do-item - 10AM",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.withOpacity(
                          .8,
                        ),
                      ),
                    ),
                    activeColor: Colors.green[500],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
