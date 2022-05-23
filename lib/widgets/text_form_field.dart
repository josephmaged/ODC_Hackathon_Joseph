import 'package:flutter/material.dart';

import '../const/const.dart';

class customTextFormField extends StatelessWidget {

  String hintText;
  IconData prefixIcon;
  TextInputType keyboardType;
  bool obscureText;

  customTextFormField({required this.hintText,required this.prefixIcon, required this.keyboardType,  this.obscureText = false });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: formTextColor
          ),
          prefixIcon: Icon(prefixIcon,color: formIconColor),
          filled: true,
          fillColor: const Color(0XFFF8F8F8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        )
    );
  }
}
