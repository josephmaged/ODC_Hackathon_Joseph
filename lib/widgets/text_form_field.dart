import 'package:flutter/material.dart';

import '../const/const.dart';

class customTextFormField extends StatelessWidget {
  String hintText;
  IconData prefixIcon;
  TextInputType keyboardType;
  bool obscureText;
  TextEditingController controller;

  customTextFormField(
      {required this.hintText, required this.prefixIcon, required this.keyboardType, this.obscureText = false, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: formTextColor),
          prefixIcon: Icon(prefixIcon, color: formIconColor),
          filled: true,
          fillColor: const Color(0XFFF8F8F8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ));
  }
}
