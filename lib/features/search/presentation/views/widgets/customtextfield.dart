// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({
    super.key,
    this.onchange,
    required this.hinttext,
    this.obscure = false,
  });

  final bool? obscure;
  final String? hinttext;
  Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure!,
      onChanged: onchange,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .5,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: buildOutineBorder(),
        focusedBorder: buildOutineBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
