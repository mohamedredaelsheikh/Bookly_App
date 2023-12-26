import 'package:flutter/material.dart';

class CustomErroMessage extends StatelessWidget {
  const CustomErroMessage({super.key, required this.errormassage});
  final String errormassage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errormassage),
    );
  }
}
