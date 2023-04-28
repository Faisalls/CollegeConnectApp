import 'package:collegeconnect/utilities/constants.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({this.colour, this.ktext, this.tap});

  final Color? colour;
  final String? ktext;
  final tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: double.maxFinite,
        height: 42.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: colour,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "$ktext",
            style: k_LandingPageButtonsTextStyle.copyWith(
                color: Colors.black87, fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
