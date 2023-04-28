import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/community_page.dart';
import '../screens/contact_mentors.dart';
import '../screens/Myaccount.dart';
import '../screens/Navigate Majors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Expanded(
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 25, 157, 140)),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Image.asset(
                    'Images/House.png',
                    height: 40,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(ContactMentors());
            },
            child: Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Image.asset(
                    'Images/people.png',
                    height: 40,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(NavigateMajors());
            },
            child: Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'Images/Books.png',
                    height: 40,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(CommunityPage());
            },
            child: Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Image.asset(
                    'Images/Many_people.png',
                    height: 40,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Get.to(MyAccount());
            },
            child: Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'Images/guy.png',
                    height: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
