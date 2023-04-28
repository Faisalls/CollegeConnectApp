import 'package:flutter/material.dart';

class dialogSubmitButton extends StatelessWidget {
  dialogSubmitButton({this.onPressed});

  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: false,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            40.0,
          ),
        ),
        elevation: 0.0,
        fixedSize: Size(
          double.maxFinite,
          42.0,
        ),
      ),
      child: Text(
        "Submit",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
