import 'package:flutter/material.dart';

class CollegeConnectTextFormField extends StatelessWidget {
  CollegeConnectTextFormField(
      {this.label,
      this.textFieldController,
      this.hintText,
      this.minLength,
      this.validator,
      this.formObsecureText = false,
      this.formIcon});

  String? label;
  String? hintText;
  TextEditingController? textFieldController;
  int? minLength;
  String? Function(String?)? validator;
  bool formObsecureText;
  Icon? formIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFieldController,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
              fontSize: 10.0,
              fontStyle: FontStyle.italic,
              color: Colors.grey.withOpacity(.5)),
          border: OutlineInputBorder(),
          hintText: hintText,
          counterText: '',
          icon: formIcon,
          hintStyle: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic)),
      maxLength: minLength,
      validator: validator,
      obscureText: formObsecureText,
    );
  }
}
