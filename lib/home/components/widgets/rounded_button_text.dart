import 'package:beflyprojeto/ui/colors.dart';
import 'package:flutter/material.dart';

class RoundedButtonText extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color color, textColor;
  const RoundedButtonText({
    Key? key,
    this.text,
    this.onPressed,
    this.color = kPrimaryLightColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: Text(text!)),
    );
  }
}