import 'package:flutter/material.dart';

class RoundedInputText extends StatelessWidget {
  const RoundedInputText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 328,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          labelText: 'Usuario',
        ),
      ),
    );
  }
}
