import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 28.0,
        ),
        child: ListView.builder(
            itemCount: 10, itemBuilder: ((context, index) => Notification())),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      margin: EdgeInsets.only(
        bottom: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          6.0,
        ),
        color: Colors.grey.withOpacity(
          .1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.account_circle_rounded),
              SizedBox(
                width: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Activties Coordinator",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Added new post",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.edit_rounded,
                        size: 12.0,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            "10M",
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
