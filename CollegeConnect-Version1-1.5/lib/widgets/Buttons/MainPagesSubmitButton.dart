import 'package:flutter/material.dart';

class MainPagesSubmitButton extends StatelessWidget {
  MainPagesSubmitButton(
      {required GlobalKey<FormState> formKey, this.onTap, this.buttonText})
      : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  void Function()? onTap;
  String? buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 48.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xA9F9DDAC),
        ),
        child: Center(
          child: Text(
            '$buttonText',
            style: TextStyle(color: Colors.black87, fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
