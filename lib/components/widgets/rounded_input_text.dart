import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedInputText extends StatelessWidget {
  var label;

  TextEditingController controller;

  ValueChanged<String>? onChanged;
  double width;
  RoundedInputText({this.label, required this.controller, this.onChanged, required this.width ,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        onChanged: onChanged ,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          labelText: '$label',
        ),
      ),
    );
  }
}
